%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           Finite Difference Method solution to           %
%       Characteristic Impedance of a Microstrip Line      %
%                                                          %
% Author: Ata Niyazov                                      %
% Student ID: 185112038                                    %
%                                                          %
% November 2019; Last revision: 30-November-2019           %
%                                                          %
% Kocaeli University (C) Copyright 2019.                   %
% All rights reserved.                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ----------------------- BEGIN CODE -----------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short g ; format compact ;

% Specify boundary values and necessary parameters
h = [0.25 0.10 0.05 0.05 0.05];
n = [700 500 500 700 1000];

for i = 1:length(h)
    H = h(i);
    NT = n(i); % Number of iterations
    
    A = 2.5;
    B = 2.5;
    D = 0.5;
    W = 1.0;
    
    NX = A/H;
    NY = B/H;
    ND = D/H;
    NW = W/H;
    
    VD = 100.0;
    
    ER = 2.35;
    E0 = 8.81E-12;
    U = 3.0E+8;
    
    % Calculate charge with and without dielectric
    ERR = 1.0;
    for L = 1:2
        E1 = E0;
        E2 = E0*ERR;
        
        % Initialization
        V = zeros(NX+2,NY+2);
        %Set potential on inner conductor (fixed nodes) equal to VD
        V(2:NW+2,ND+2) = VD;
        
        % Calculate potential at free nodes
        P1 = E1/(2*(E1+E2));
        P2 = E2/(2*(E1+E2));
        for K = 1:NT
            for I = 0:NX-1
                for J = 0:NY-1
                    if((J==ND) && (I<=NW))
                        % do nothing
                    elseif(J==ND)
                        % Impose boundary condition at the interface
                        V(I+2,J+2) = 0.25*(V(I+3,J+2)+V(I+1,J+2))+P1*V(I+2,J+3)+P2*V(I+2,J+1);
                    elseif(I==0)
                        % Impose symmetry condition along y-axis
                        V(I+2,J+2) = (2*V(I+3,J+2)+V(I+2,J+3)+V(I+2,J+1))/4.0;
                    elseif(J==0)
                        % Impose symmetry condition along x-axis
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
        % Calculate the total charge enclosed in a
        % rectangular path surrounding the inner conductor
        IOUT = round((NX+NW)/2);
        JOUT = round((NY+ND)/2);
        % Sum potential on inner and outer loops
        for K = 1:2
            SUM = E1*sum(V(3:IOUT+1,JOUT+2))+E1*V(2,JOUT+2)/2+E2*V(IOUT+2,2)/2;
            for J = 1:JOUT-1
                if(J<ND)
                    SUM = SUM+E2*V(IOUT+2,J+2);
                elseif(J==ND)
                    SUM = SUM+(E1+E2)*V(IOUT+2,J+2)/2;
                else
                    SUM = SUM+E1*V(IOUT+2,J+2);
                end
            end
            if K==1
                SV(1) = SUM;
            end
            IOUT = IOUT-1;
            JOUT = JOUT-1;
        end
        SUM = SUM+2.0*E1*V(IOUT+2,JOUT+2);
        SV(2) = SUM;
        Q(L) = abs(SV(1)-SV(2));
        ERR = ER;
    end
    % Calculate Zo
    C0 = 4.0*Q(1)/VD;
    C1 = 4.0*Q(2)/VD;
    Z0 = 1.0/(U*sqrt(C0*C1));
    z(i) = Z0;
    %disp([H,NT,Z0]);
end

% Display results as formatted table
table_length = 5+20+21+1;

fprintf('%c', (ones(1, table_length) * '-'));
fprintf('\n');

string = 'Characteristic Impedance of a Microstrip Line';
fprintf('%c', (ones(1, floor((table_length - length(string))/2)) * ' '));
fprintf('%s\n', string);

fprintf('%c', (ones(1, table_length) * '-'));
fprintf('\n');

fprintf(' h');
fprintf('           ');
fprintf('Number of Iterations');
fprintf('           ');
fprintf('Zo');
fprintf('\n');

fprintf('%c', (ones(1, table_length) * '-'));
fprintf('\n');

for i = 1:length(h)
    fprintf('%5.2f', h(i));
    fprintf('%20d', n(i));
    fprintf('%21.2f', z(i));
    fprintf('\n');
end

fprintf('%c', (ones(1, table_length) * '-'));
fprintf('\n');

% ----------------------- END OF CODE ----------------------
