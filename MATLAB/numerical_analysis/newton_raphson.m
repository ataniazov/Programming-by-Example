%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

%fx = x^3 + 4 * x^2 - 3;
%fxd = 3 * x + 2 * 4 * x;

tol = 5e-5;

x0 = 0.7;

fx0 = x0^3 + 4 * x0^2 - 3;
fx0d = 3 * x0^2 + 8 * x0;

x1 = x0 - fx0 / fx0d;

iter = 1;

while abs(x0 - x1) > tol
    x0 = x1;
    
    fx0 = x0^3 + 4 * x0^2 - 3;
    fx0d = 3 * x0^2 + 8 * x0;
    
    x1 = x0 - fx0 / fx0d;
    
    iter = iter + 1;
end

x1
fx1 = x1^3 + 4 * x1^2 - 3
iter

%------------- END OF CODE --------------