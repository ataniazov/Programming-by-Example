% ----------------------- BEGIN CODE -----------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short g; format compact ;

% Specify values and necessary parameters
ln(1) = 0;
ln(4) = 1.3862944;
ln(6) = 1.7917595;
%ln(2) = 0.69314718;

x = 2;
x0 = 1;
x1 = 4;
x2 = 6;

ln(x) = ((((x-x1)*(x-x2))/((x0-x1)*(x0-x2))) * ln(x0)) + ...
        ((((x-x0)*(x-x2))/((x1-x0)*(x1-x2))) * ln(x1)) + ...
        ((((x-x0)*(x-x1))/((x2-x0)*(x2-x1))) * ln(x2));

fprintf("ln(%u) = \n", x);
disp(ln(x));

% ----------------------------------------------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short g; format compact ;

% Specify values and necessary parameters
x = [0 2 4 7 10];
fx = [1 7 10 13 20];

x_ = 3;

fx_=(((x_-x(2))*(x_-x(3))*(x_-x(4))*(x_-x(5)))/((x(1)-x(2))*(x(1)-x(3))*(x(1)-x(4))*(x(1)-x(5)))*fx(1)) + ...
    (((x_-x(1))*(x_-x(3))*(x_-x(4))*(x_-x(5)))/((x(2)-x(1))*(x(2)-x(3))*(x(2)-x(4))*(x(2)-x(5)))*fx(2)) + ...
    (((x_-x(1))*(x_-x(2))*(x_-x(4))*(x_-x(5)))/((x(3)-x(1))*(x(3)-x(2))*(x(3)-x(4))*(x(3)-x(5)))*fx(3)) + ...
    (((x_-x(1))*(x_-x(2))*(x_-x(3))*(x_-x(5)))/((x(4)-x(1))*(x(4)-x(2))*(x(4)-x(3))*(x(4)-x(5)))*fx(4)) + ...
    (((x_-x(1))*(x_-x(2))*(x_-x(3))*(x_-x(4)))/((x(5)-x(1))*(x(5)-x(2))*(x(5)-x(3))*(x(5)-x(4)))*fx(5));

fprintf("fx(%u) =\n", x_);
disp(fx_);

% ----------------------------------------------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short g; format compact ;

% Specify values and necessary parameters
x = [0 2 4 7 10];
y = [1 7 10 13 20];

x_ = 3;
fx = 0;

for i = 1:length(x)
    mult = 1;
    for j = 1:length(x)
        if i ~= j
            mult = mult*(x_-x(j))/(x(i)-x(j));
        end
    end
    fx = fx+(mult*y(i));
end

fprintf("fx(%u) =\n", x_);
disp(fx);

% ----------------------------------------------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short g; format compact ;

% Specify values and necessary parameters
x = [1 4 6];
y = [0 1.3862944 1.7917595];

x_ = 2;
fx = 0;

for i = 1:length(x)
    mult = 1;
    for j = 1:length(x)
        if i ~= j
            mult = mult*(x_-x(j))/(x(i)-x(j));
        end
    end
    fx = fx+(mult*y(i));
end

fprintf("fx(%u) =\n", x_);
disp(fx);

% ----------------------- END OF CODE ----------------------