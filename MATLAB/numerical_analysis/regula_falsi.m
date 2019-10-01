%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

a = 1;
b = 2;

%fx = (x^3) + (4 * x^2) - 10

tol = 0.001;

fx = 1;

iter = 0;

while abs(fx) > tol
    iter = iter + 1

    fa = (a^3) + (4 * a^2) - 10;
    fb = (b^3) + (4 * b^2) - 10;

    x = (a * fb - b * fa) / (fb - fa)

    fx = (x^3) + (4 * x^2) - 10

    if (fa * fx) < 0
        b = x;
    else
        a = x;
    end
end

a
b
x
fx
iter

%------------- END OF CODE --------------