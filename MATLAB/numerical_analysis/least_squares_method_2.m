% ----------------------- BEGIN CODE -----------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short g; format compact ;

% Specify values and necessary parameters
x = [0 2 5 9 15 25 40];
y = [5 12 23 37 44 60 81];
degree = 5;

if degree >= length(x)
    disp("Warning: Polynomial is not unique; degree >= number of data points.");
    degree = length(x)-1;
end

for i = 0:degree*2
    term(i+1) = sum(x.^i);
end

term;

for i = 1:degree+1
    A(i,:) = term(i:(degree+i));
    b(i,1) = sum(y.*(x.^(i-1)));
end

A;
b;

%a = inv(A) * b';
detA = det(A);
for i = 1:length(b)
    D = A;
    D(:,i) = b;
    a(i,1) = det(D)/detA;
end

disp('Least squares method:');
a

gx = 0;
for i = 1:degree+1
    gx = gx + a(i,1) * (x.^(i-1));
end

gx;

figure;
plot(x, y, 'k-o', x, gx, 'r-*');
title('Least squares method');
legend('fx', 'gx');
xlabel('x');
ylabel('y');

% ----------------------------------------------------------

disp('Polyfit:');
p = polyfit(x, y, degree);
p = flip(p)'

px = 0;
for i = 1:degree+1
    px = px + p(i,1) * (x.^(i-1));
end

px;

figure;
plot(x, y, 'k-o', x, px, 'b-*');
title('Polyfit');
legend('fx', 'px');
xlabel('x');
ylabel('y');

% ----------------------- END OF CODE ----------------------