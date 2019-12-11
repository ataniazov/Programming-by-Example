% ----------------------- BEGIN CODE -----------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short g; format compact ;

% ax^2 + bx + c
% dx^2 + ex + f
% ex^2 + hx + i

% ax_1^2 + bx + c = y_1
% ax_2^2 + bx + c = y_2
% dx_2^2 + ex + f = y_3
% dx_3^2 + ex + f = y_4
% ex_3^2 + hx + i = y_5
% ex_4^2 + hx + i = y_6
% 2 * ax + b - 2 * dx - e = 0
% 2 * dx + e - 2 * gx - h = 0
% 2a = 0 || 2g = 0

% Specify values and necessary parameters
x = [-1 0 1 2]
y = [-0.5 0 0.5 0.866]

range = length(x)-1;
unknown = 3 * range;

A = zeros(unknown);
b = zeros(unknown, 1);

row = 1;
col = 1;
for i = 1:range
    A(row:row+1,col:col+2) = [x(i)^2 x(i) 1 ; x(i+1)^2 x(i+1) 1];
    b(row:row+1,1) = [y(i) ; y(i+1)];
    row = row + 2;
    col = col + 3;
end

col = 1;
for i = 1:range-1
    A(row,col:col+5) = [2*x(i+1) 1 0 -2*x(i+1) -1 0];
    row = row + 1;
    col = col + 3;
end

if randi([0, 1])
    col = unknown-2;
else
    col = 1;
end

A(row,col:col+2) = [2 0 0];

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
    tmp_y = 0;
    for j = 0:2
        tmp_y = tmp_y + a(row+j) * (tmp_x.^(2-j));
    end
    y_ = [y_ tmp_y];
    row = row + 3;
end

x_
y_

plot(x_, y_, 'b', x, y, 'r*');
title('Quadratic spline method');
legend('found', 'known', 'Location', 'northwest');
xlabel('x');
ylabel('y');
grid;

% ----------------------- END OF CODE ----------------------