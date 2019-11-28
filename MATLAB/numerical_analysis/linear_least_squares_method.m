% ----------------------- BEGIN CODE -----------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short ; format compact ;

% Specify values and necessary parameters
x = [0 1 2 4 7];
y = [1 4 7 13 22];

a = (sum(y) / length(y)) * ones(length(y));

plot(x, y, 'k-o', x, a, 'r-*');
legend('fx', 'a');

% ----------------------------------------------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short ; format compact ;

% Specify values and necessary parameters
x = [0 1 2 4 7];
y = [1 5 8 13 21];

A = [length(x) sum(x) ; sum(x) sum(x.^2)];

b = [sum(y) ; sum(y.*x)];

a = inv(A) * b;
gx = a(1) + a(2) * x;

plot(x, y, 'k-o', x, gx, 'r-*');
legend('fx', 'gx');

% ----------------------------------------------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short ; format compact ;

% Specify values and necessary parameters
x = [0 2 3 5 8];
y = [-6 0 7 21 65];

A = [length(x) sum(x) sum(x.^2) ; sum(x) sum(x.^2) sum(x.^3); sum(x.^2) sum(x.^3) sum(x.^4)];
b = [sum(y) ; sum(y.*x) ; sum(y.*(x.^2))];

a = inv(A) * b;
gx = a(1) + a(2) * x + a(3) * (x.^2);

plot(x, y, 'k-o', x, gx, 'r-*');
legend('fx', 'gx');

% ----------------------------------------------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short ; format compact ;

% Specify values and necessary parameters
x = [0 2 5 9 15 25 40];
y = [5 12 23 37 44 60 81];

a = polyfit(x, y, 5);

%polinomKatsayilar = polyfit(x, y, derece);
%pk = polifit([-3 0 3], [-9 -3 3], 1);

gx = a(6) + a(5) * x + a(4) * (x.^2) + a(3) * (x.^3) + a(2) * (x.^4) + a(1) * (x.^5);

plot(x, y, 'k-o', x, gx, 'r-*');
legend('fx', 'gx');

% ----------------------- END OF CODE ----------------------