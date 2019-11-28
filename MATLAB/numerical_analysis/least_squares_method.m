% ----------------------- BEGIN CODE -----------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short g; format compact ;

% Specify values and necessary parameters
x = [0 2 5 9 15 25 40];
y = [5 12 23 37 44 60 81];
order = 5;

A = [];
b = [];

for i = 1:order+1
    row = [];
    for j = i-1:order+i-1
        row = [row sum(x.^j)];
    end
    A = [A ; row];
    b = [b ; sum(y.*(x.^(i-1)))];
end

A
b

%polyfit(x, y, 5);
%a = inv(A) * b';
for i = 1:length(b)
    D = A;
    D(:,i) = b;
    a(i,1) = det(D)/det(A);
end

a

gx = 0;
for i = 1:order+1
    gx = gx + a(i,1) * (x.^(i-1));
end

gx

plot(x, y, 'k-o', x, gx, 'r-*');
legend('fx', 'gx');

% ----------------------- END OF CODE ----------------------