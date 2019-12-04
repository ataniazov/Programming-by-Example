%**************************************************************
%  Using the finite difference method
%  This program calculates the characteristic
%  impedance of the transmission line
%**************************************************************

clear all; format short g ; format compact;

% Output:
%
%    H           NT           Zo
% ---------------------------------
%   0.25         700         69.77
%    0.1         500         65.75
%   0.05         500         70.53
%   0.05         700         67.36
%   0.05        1000         65.50

H = 0.05;
NT = 1000;

A = 2.5; B = 2.5; D = 0.5; W = 1.0;

ER = 2.35;
E0 = 8.81E-12;
U = 3.0E+8;

NX = A/H;
NY = B/H;
ND = D/H;
NW = W/H;
VD = 100.0;

% CALCULATE CHARGE WITH AND WITHOUT DIELECTRIC
ERR = 1.0;
for L = 1:2
    E1 = E0;
    E2 = E0*ERR;
    
    % INITIALIZATION
    V = zeros(NX+2,NY+2);
    
    % SET POTENTIAL ON INNER CONDUCTOR (FIXED NODES) EQUAL TO VD
    V(2:NW+2,ND+2) = VD;

    % CALCULATE POTENTIAL AT FREE NODES
    P1 = E1/(2*(E1 + E2));
    P2 = E2/(2*(E1 + E2));
    for K = 1:NT
        for I = 0:NX-1
            for J = 0:NY-1
                if((J==ND) && (I<=NW))
                    % do nothing
                elseif(J==ND)
                    % IMPOSE BOUNDARY CONDITION AT THE INTERFACE
                    V(I+2,J+2) = 0.25*(V(I+3,J+2)+V(I+1,J+2))+P1*V(I+2,J+3)+P2*V(I+2,J+1);
                elseif(I==0)
                    % IMPOSE SYMMETRY CONDITION ALONG Y-AXIS
                    V(I+2,J+2) = (2*V(I+3,J+2)+V(I+2,J+3)+V(I+2,J+1))/4.0;
                elseif(J==0)
                    % IMPOSE SYMMETRY CONDITION ALONG X-AXIS
                    V(I+2,J+2) = (V(I+3,J+2)+V(I+1,J+2)+2*V(I+2,J+3))/4.0;
                else
                    V(I+2,J+2) = (V(I+3,J+2)+V(I+1,J+2)+V(I+2,J+3)+V(I+2,J+1))/4.0;
                end
            end
        end
        % Animation of calculation
        % figure(1), imagesc(V), colorbar, title([num2str(K), '/', num2str(NT)])
        % drawnow
    end

    % NOW, CALCULATE THE TOTAL CHARGE ENCLOSED IN A
    % RECTANGULAR PATH SURROUNDING THE INNER CONDUCTOR
    IOUT = round((NX+NW)/2);
    JOUT = round((NY+ND)/2);
    % SUM POTENTAIL ON INNER AND OUTER LOOPS
    for K = 1:2
        SUM = E1*sum(V(3:IOUT+1,JOUT+2)) + E1*V(2,JOUT+2)/2 + E2*V(IOUT+2,2)/2;
        for J = 1:JOUT-1
            if(J<ND)
                SUM = SUM + E2*V(IOUT+2,J+2);
            elseif(J==ND)
                SUM = SUM + (E1+E2)*V(IOUT+2,J+2)/2;
            else
                SUM = SUM + E1*V(IOUT+2,J+2);
            end
        end
        if K==1
            SV(1) = SUM;
        end
        IOUT = IOUT - 1;
        JOUT = JOUT - 1;
    end
    SUM = SUM + 2.0*E1*V(IOUT+2,JOUT+2);
    SV(2) = SUM;
    Q(L) = abs(SV(1)-SV(2));
    ERR = ER;
end

% FINALLY, CALCULATE Zo
C0 = 4.0*Q(1)/VD;
C1 = 4.0*Q(2)/VD;
Z0 = 1.0/(U*sqrt(C0*C1));

disp([H, NT, Z0]);

