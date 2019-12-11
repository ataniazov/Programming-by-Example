% ----------------------- BEGIN CODE -----------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short g; format compact ;

% Specify values and necessary parameters
x = [1 2 3 4]
y = [0 0.6931 1.0986 1.3863]

range = length(x)-1;
unknown = 2 * range;

A = zeros(unknown);
b = zeros(unknown, 1);

row = 1;
col = 1;
for i = 1:range
    A(row:row+1,col:col+1) = [x(i) 1 ; x(i+1) 1];
    b(row:row+1,1) = [y(i) ; y(i+1)];
    row = row + 2;
    col = col + 2;
end

A
b

% a = inv(A) * b;
detA = det(A);
for i = 1:length(b)
    D = A;
    D(:,i) = b;
    a(i,1) = det(D)/detA;
end

a

x_ = [];
y_ = [];

row = 1;
for i = 1:range
    tmp_x = x(i):0.1:x(i+1);
    x_ = [x_ tmp_x];
    tmp_y = a(row) * tmp_x + a(row+1);
    y_ = [y_ tmp_y];
    row = row + 2;
end

x_
y_

plot(x_, y_, 'b', x, y, 'r*');
title('Linear spline method');
legend('found', 'known', 'Location', 'northwest');
xlabel('x');
ylabel('y');
grid;

% ----------------------- END OF CODE ----------------------