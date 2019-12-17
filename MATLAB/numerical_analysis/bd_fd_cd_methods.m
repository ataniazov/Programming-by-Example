% ----------------------- BEGIN CODE -----------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short g; format compact ;

% Specify values and necessary parameters
%fx = x^2
x = 1
h = 0.1

x1 = x - h;
x2 = x + h;

bd = (x^2 - x1^2)/h
fd = (x2^2 - x^2)/h
cd = (x2^2 - x1^2)/(2*h)

% ----------------------------------------------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short g; format compact ;

% Specify values and necessary parameters
% fx = x^3
h = 1;
x = [-10:h:10];
yr = 3 * (x.^2);

y = x.^3;

for i = 2:length(x)
    yb(i-1) = (y(i) - y(i-1))/h;
    xb(i-1) = x(i);
end

for i = 1:length(x)-1
    yf(i) = (y(i+1) - y(i))/h;
    xf(i) = x(i);
end

for i = 2:length(x)-1
    yc(i-1) = (y(i+1) - y(i-1))/(2 * h);
    xc(i-1) = x(i);
end

plot(x, yr, 'k', xb, yb, 'r-.', xf, yf, 'b--', xc, yc, 'g--o');
legend('Real', "BD", "FD", "CD", 'Location', 'North');
xlabel('x');
ylabel('y');

% ----------------------------------------------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short g; format compact ;

% Specify values and necessary parameters
syms x % define symbols
diff(x^2)

% ----------------------- END OF CODE ----------------------