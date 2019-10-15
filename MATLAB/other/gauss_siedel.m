% Gauss-Siedel
% 2016-11-30

clc; clear all; close all;

% -2x+y=-1
% 2x-3y=5
% Gauss-Siedel

A=[-2 1 ; 2 -3];
b=[-1 ; 5];

x0 = [0 ; 0];   % baslangic degeri

[row col] = size(A);

tol = 0.0001;

error=1;
iter=0;

while error > tol
    x=x0;
    iter=iter+1;
    for i=1:row
        diff=0;
        for j=1:col
            if i==j
                diff;
            else
                diff = diff + A(i,j) * x0(j);
            end
        end
        x(i,1) = (b(i) - diff) / A(i,i);
    end
    error = max(abs(x-x0));
    x0=x;
end

disp('Gauss-Siedel yontemi:');

iter
x
