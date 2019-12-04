% ----------------------- BEGIN CODE -----------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format long g; format compact ;

% Specify values and necessary parameters
ln(1) = 0;
ln(4) = 1.3862944;
ln(6) = 1.7917595;
%ln(2) = 0.69314718;

x = 2;
xk1 = 4;
xk_1 = 1;

ln(x) = (((ln(xk1)-ln(xk_1))/(xk1-x))*(xk1-xk_1))-ln(xk1);
fprintf("ln(%u) = \n", x);
disp(ln(x));

% ----------------------------------------------------------

x = 2;
xk1 = 6;
xk_1 = 1;

ln(x) = (((ln(xk1)-ln(xk_1))/(xk1-x))*(xk1-xk_1))-ln(xk1);
fprintf("ln(%u) = \n", x);
disp(ln(x));

% ----------------------------------------------------------

x = [1 4 6]';
y = [0 1.3862944 1.7917595];
yi = interp1(x,y,2)

% ----------------------------------------------------------

x = [1 4]';
y = [0 1.3862944];
yi = interp1(x,y,2)

% ----------------------------------------------------------

x = [1 6]';
y = [0 1.7917595];
yi = interp1(x,y,2)

% ----------------------------------------------------------

fprintf("log(%u) = \n", 2);
disp(log(2));

% ----------------------- END OF CODE ----------------------