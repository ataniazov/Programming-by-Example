%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Successive Over-Relaxation (SOR) of Finite Difference  %
%           Method solution to Poisson's Equation          %
%                                                          %
% Author: Ata Niyazov                                      %
%                                                          %
% November 2019; Last revision: 10-November-2019           %
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
X = 1;
Y = 1;
V = [0 10 20 -10];

h = [1/4 1/12 1/20];

results = [];

for n = 1:length(h)
    % Set initial guess equal to zeros or to average of fixed values
    for i = 1:X/h(n)-1
        for j = 1:Y/h(n)-1
            Vapprox(i+1,j+1) = sum(V)/4;
        end
    end
    
    % Set potentials at fixed nodes
    for i = 1:X/h(n)-1
        Vapprox(i+1,1) = V(1);
        Vapprox(i+1,Y/h(n)+1) = V(3);
    end
    
    for j = 1:Y/h(n)-1
        Vapprox(1,j+1) = V(4);
        Vapprox(X/h(n)+1,j+1) = V(2);
    end
    
    Vapprox(1,1) = (V(1)+V(4))/2;
    Vapprox(X/h(n)+1,1) = (V(1)+V(2))/2;
    Vapprox(1,Y/h(n)+1) = (V(3)+V(4))/2;
    Vapprox(X/h(n)+1,Y/h(n)+1) = (V(2)+V(3))/2;
    
    % Find the optimum Over-Relaxation factor
    T = cos(pi/(X/h(n))) + cos(pi/(Y/h(n)));
    omega(n) = (8-sqrt(64-16*(T^2))) / (T^2);
    
    % Iteration begins
    iteration(n) = 0;
    
    loop = true;
    while loop
        Rmin = 0;
        for i = 1:X/h(n)-1
            x = h(n)*i;
            for j = 1:Y/h(n)-1
                y = h(n)*j;
                g = -36*pi*x*(y-1);
                R = (omega(n)/4) * (Vapprox(i+2,j+1) + Vapprox(i,j+1) + Vapprox(i+1,j+2) + Vapprox(i+1,j) - 4*Vapprox(i+1,j+1) - g*(h(n)^2));
                Rmin = Rmin + abs(R);
                Vapprox(i+1,j+1) = Vapprox(i+1,j+1) + R;
            end
        end
        
        Rmin = Rmin/((X/h(n))*(Y/h(n)));
        if Rmin >= 0.0001
            % Solution has converged
            iteration(n) = iteration(n) + 1;
            if(iteration(n) > 100)
                loop = false;
                disp('Solution does not converge in 100 iterations')
            end
        else
            % Then Rmin is less than 0.0001 and then solution has converged
            loop = false;
            %disp(['Solution Converges in ', num2str(iteration(n)), ' iterations'])
            %disp(['h = ', num2str(h(n))])
        end
    end
    
    % Grab original points a through i
    approx_results = [];
    for i = (size(Vapprox,1)-1)/4+1 : (size(Vapprox,1)-1)/4 : size(Vapprox,1)-1
        for j = (size(Vapprox,2)-1)/4+1 : (size(Vapprox,2)-1)/4 : size(Vapprox,2)-1
            approx_results = [approx_results; Vapprox(i,j)];
        end
    end
    
    results = [results approx_results];
end

% Output the finite difference approximate results

% ----------------------------------------------------------
% Calculate the exact solution
%
% Poisson's equation with homogeneous boundary conditions
% solved by series expansion

X_Hmax = 0;
Y_Hmax = 0;

for n = 1:length(h)
    Hmax = X/h(n);
    if X_Hmax < Hmax
        X_Hmax = X/h(n);
    end
    
    Hmax = Y/h(n);
    if Y_Hmax < Hmax
        Y_Hmax = Y/h(n);
    end
end

for i = 1:X_Hmax-1
    x = (1/X_Hmax) * i;
    for j = 1:Y_Hmax-1
        y = (1/Y_Hmax) * j;
        
        total = 0;
        % Take only 10 terms of the series
        for m = 1:10
            for n = 1:10
                F = [((m*pi/X)^2 + (n*pi/Y)^2) ((-1)^(m+n))*144*X*Y/(pi*m*n) (1-(1-(-1)^n)/Y)];
                total = total + F(2) * F(3) / F(1) * sin(m*pi*x/X) * sin(n*pi*y/Y);
            end
        end
        
        Vexact(i+1,j+1) = total;
        
        % Laplace's equation with inhomogeneous boundary conditions
        % solved using the method of separation of variables
        C = 4*V/pi;
        
        total = 0;
        % Take only 10 terms of the series
        for k = 1:10
            n = 2*k-1;
            
            T = [];
            
            A = [(sin(n*pi*x/Y)) (sinh(n*pi*(X-y)/Y)) (n*sinh(n*pi*X/Y))];
            T = [T (C(1)*A(1)*A(2)/A(3))];
            
            B = [(sinh(n*pi*x/X)) (sin(n*pi*y/X)) (n*sinh(n*pi*Y/X))];
            T = [T (C(2)*B(1)*B(2)/B(3))];
            
            D = [(sin(n*pi*x/Y)) (sinh(n*pi*y/Y)) (n*sinh(n*pi*X/Y))];
            T = [T (C(3)*D(1)*D(2)/D(3))];
            
            E = [(sinh(n*pi*(Y-x)/X)) (sin(n*pi*y/X)) (n*sinh(n*pi*Y/X))];
            T = [T (C(4)*E(1)*E(2)/E(3))];
            
            total = total + sum(T);
        end
        
        Vexact(i+1,j+1) = Vexact(i+1,j+1) + total;
    end
end

% Grab original points a through i
exact_results = [];
for i = size(Vexact,1)/4+1 : size(Vexact,1)/4 : size(Vexact,1)
    for j = size(Vexact,2)/4+1 : size(Vexact,2)/4 : size(Vexact,2)
        exact_results = [exact_results; Vexact(i,j)];
    end
end

results = [results exact_results];

% Display results as formatted table
table_length = 5 + 16*(size(h,2)+1) + 1;

fprintf('%c', (ones(1, table_length) * '-'));
fprintf('\n');

string = 'Successive Over-Relaxation Solution';
fprintf('%c', (ones(1, floor((table_length - length(string))/2)) * ' '));
fprintf('%s\n', string);

fprintf('%c', (ones(1, table_length) * '-'));
fprintf('\n');

fprintf('     ');
[h_rat(1,:) h_rat(2,:)] = rat(h);
fprintf('      h = %u/%2u  ', h_rat);
fprintf('\n');

fprintf('     ');
fprintf('      W = %5.3f ', omega);
fprintf('\n');

fprintf(' Node');
fprintf('%5u iterations', iteration);
fprintf('  Exact Solution\n');

fprintf('%c', (ones(1, table_length) * '-'));
fprintf('\n');

for i = 1:size(results,1)
    fprintf(' %c   ', i-1+'a');
    fprintf('%13.4g   ', results(i,:));
    fprintf('\n');
end

fprintf('%c', (ones(1, table_length) * '-'));
fprintf('\n');

% ----------------------- END OF CODE ----------------------
