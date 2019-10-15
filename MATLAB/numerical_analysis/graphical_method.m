%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

x = [0:0.1:3];

% x + e^y = 3
% sin((pi/4) * x) + y = 1

y1 = log(3 - x);
y2 = 1 - sin((pi/4) * x);

plot(x, y1, 'b', x, y2, 'r');
grid;

%------------- END OF CODE --------------