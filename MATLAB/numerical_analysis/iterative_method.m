%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

%fx = x^2 - 3 * x + 1;
%gx = (x^2 + 1) / 3;
%gx = sqrt(3 * x - 1);

tol = 0.1;

x0 = 2;

x1 = sqrt(3 * x0 - 1);

iter = 1;

while abs(x1 - x0) > tol
    x0 = x1;
    x1 = sqrt(3 * x0 - 1);
    iter = iter + 1;
end

fprintf('Yaklasik kok: %f\n', x1);

iter

fx = x1^2 - 3 * x1 + 1

%------------- END OF CODE --------------