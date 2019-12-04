C*******************************************************
C USING THE FINITE DIFFERENCE METHOD
C THIS PROGRAM CALCULATES THE CHARACTERISTIC IMPEDANCE
C OF A MICROSTRIP LINE
C*******************************************************
        DIMENSION V(-1:200,-1:200),SV(2),Q(2)
        DATA A,B,D,W/2.5,2.5,0.5,1.0/ ! line data
        DATA ER,E0,U/2.35,8.81E-12,3.0E+8/
        H = 0.05
        NT = 1000 ! NO. OF ITERATIONS
        NX = A/H
        NY = B/H
        ND = D/H
        NW = W/H
        VD = 100.0
C
C CALCULATE CHARGE WITH AND WITHOUT DIELECTRIC
C
        ERR = 1.0
        DO 90 L=1,2
        E1 = E0
        E2 = E0*ERR
C
C INITIALIZATION
C
        DO 10 I=0,NX
        DO 10 J=0,NY
        V(I,J) = 0.0
10      CONTINUE
C
C SET POTENTIAL ON INNER CONDUCTOR (FIXED NODES) EQUAL TO VD
C
        DO 20 I=0,NW
        V(I,ND) = VD
20      CONTINUE
C
C CALCULATE POTENTIAL AT FREE NODES
C
        P1 = E1/(2.0*(E1 + E2))
        P2 = E2/(2.0*(E1 + E2))
        DO 50 K=1,NT
        DO 40 I=0,NX-1
        DO 40 J=0,NX-1
        IF((J.EQ.ND).AND.(I.LE.NW)) GO TO 40
        IF(J.EQ.ND) THEN
C IMPOSE BOUNDARY CONDITION AT THE INTERFACE
        V(I,J) = 0.25*(V(I+1,J) + V(I-1,J)) + P1*V(I,J+1) + P2*V(I,J-1)
        GO TO 40
        ENDIF
        IF(I.EQ.0) THEN
C IMPOSE SYMMETRY CONDITION ALONG Y-AXIS
        V(I,J) = (2.0*V(I+1,J) + V(I,J+1) + V(I,J-1))/4.0
        GO TO 40
        ENDIF
        IF(J.EQ.0) THEN
C IMPOSE SYMMETRY CONDITION ALONG X-AXIS
        V(I,J) = (V(I+1,J) + V(I-1,J) + 2.0*V(I,J+1))/4.0
        GO TO 40
        ENDIF
30      V(I,J) = (V(I+1,J)+V(I-1,J)+V(I,J+1)+V(I,J-1))/4.0
40      CONTINUE
50      CONTINUE
C
C NOW, CALCULATE THE TOTAL CHARGE ENCLOSED IN A
C RECTANGULAR PATH SURROUNDING THE INNER CONDUCTOR
C
        IOUT = (NX + NW)/2
        JOUT = (NY + ND)/2
C SUM POTENTIAL ON INNER AND OUTER LOOPS
        DO 80 K=1,2
        SUM = 0.0
        DO 60 I=1,IOUT-1
        SUM = SUM + E1*V(I,JOUT)
60      CONTINUE
        SUM = SUM + E1*V(0,JOUT)/2.0 ! SYMMETRY POINT
        DO 70 J=1,JOUT-1
        IF(J.LT.ND) SUM = SUM + E2*V(IOUT,J)
        IF(J.EQ.ND) SUM = SUM + (E1+E2)*V(IOUT,J)/2.0
        IF(J.GT.ND) SUM = SUM + E1*V(IOUT,J)
70      CONTINUE
        SUM = SUM + E2*V(IOUT,0)/2.0 ! SYMMETRY POINT
        IF(K.EQ.1) SV(1) = SUM
        IOUT = IOUT-1 ! FOR INNER LOOP
        JOUT = JOUT-1
80      CONTINUE
        SUM = SUM + 2.0*E1*V(IOUT,JOUT) ! CORNER POINT
        SV(2) = SUM
        Q(L) = ABS(SV(1) - SV(2))
        ERR = ER
90      CONTINUE
C
C FINALLY, CALCULATE Zo
C
        C0 = 4.0*Q(1)/VD
        C1 = 4.0*Q(2)/VD
        Z0 = 1.0/(U*SQRT(C0*C1))
        WRITE(6,*) H,NT,Z0
        PRINT *,H,NT,Z0
        STOP
        END

