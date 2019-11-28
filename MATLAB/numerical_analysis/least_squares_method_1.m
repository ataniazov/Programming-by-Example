% ----------------------- BEGIN CODE -----------------------

% Close all figures, clear variables in memory and MATLAB command screen
close all ; clear all ; clc ;

% Set the output format to the short format with compact line spacing
format short g; format compact ;

% Specify values and necessary parameters
x = [0 2 5 9 15 25 40];
y = [5 12 23 37 44 60 81];
order = 5;

for i = 0:order*2
    term(i+1) = sum(x.^i);
end

for i = 1:order+1
    A(i,:) = term(i:(order+i));
    b(i,1) = sum(y.*(x.^(i-1)));
end

A
b

%polyfit(x, y, 5);
%a = inv(A) * b';

detA = det(A);
for i = 1:length(b)
    D = A;
    D(:,i) = b;
    a(i,1) = det(D)/detA;
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