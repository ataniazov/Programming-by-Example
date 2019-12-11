% ----------------------- BEGIN CODE -----------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short g; format compact ;

% ax^3 + bx^2 + cx + d
% ex^3 + fx^2 + gx + h

% ax_1^3 + bx_1^2 + cx_1 + d = y_1
% ax_2^3 + bx_2^2 + cx_2 + d = y_2
% ex_2^3 + fx_2^2 + gx_2 + h = y_2
% ex_3^3 + fx_3^2 + gx_3 + h = y_3
% 3ax_2^2 + 2bx_2 + c = 3ex_2^2 + 2fx_2 + g =>
%   3ax_2^2 + 2bx_2 + c - 3ex_2^2 - 2fx_2 - g = 0
% 6ax_2 + 2b = 6ex_2 + 2f => 6ax_2 + 2b - 6ex_2 - 2f = 0
% 6ax_1 + 2b = 0
% 6ex_3 + 2f = 0

% Specify values and necessary parameters
x = [-1 0 1 2]
y = [-0.5 0 0.5 0.866]

range = length(x)-1;
unknown = 4 * range;

A = zeros(unknown);
b = zeros(unknown, 1);

row = 1;
col = 1;
for i = 1:range
    A(row:row+1,col:col+3) = [x(i)^3 x(i)^2 x(i) 1 ; x(i+1)^3 x(i+1)^2 x(i+1) 1];
    b(row:row+1,1) = [y(i) ; y(i+1)];
    row = row + 2;
    col = col + 4;
end

col = 1;
for i = 1:range-1
    A(row:row+1,col:col+7) = [3*x(i+1)^2 2*x(i+1) 1 0 -3*x(i+1)^2 -2*x(i+1) -1 0 ; 6*x(i+1) 2 0 0 -6*x(i+1) -2 0 0];
    row = row + 2;
    col = col + 4;
end

col = 1;
for i = 0:1
    i
    A(row,col:col+3) = [6*x(length(x)^i) 2 0 0];
    row = row + 1;
    col = unknown-3;
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
    tmp_y = 0;
    for j = 0:3
        tmp_y = tmp_y + a(row+j) * (tmp_x.^(3-j));
    end
    y_ = [y_ tmp_y];
    row = row + 4;
end

x_
y_

plot(x_, y_, 'b', x, y, 'r*');
title('Qubic spline method');
legend('found', 'known', 'Location', 'northwest');
xlabel('x');
ylabel('y');
grid;

% ----------------------- END OF CODE ----------------------