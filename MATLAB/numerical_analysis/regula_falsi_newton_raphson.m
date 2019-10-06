%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

%fx = (x^3) + (x^2) - (12 * x);
%fxd = (3 * x^2) + (2 * x) - 12;

a = 2;
b = 4;

h = 0.0001;

iter = 0;

while abs(a - b) > h
    fa = (a^3) + (a^2) - (12 * a);
    fb = (b^3) + (b^2) - (12 * b);

    x = (a * fb - b * fa) / (fb - fa);

    fx = (x^3) + (x^2) - (12 * x);

    if (fb * fx) < 0
        a = x;
%     else
%         b = x;
    end
    
%     fb = (b^3) + (b^2) - (12 * b);
    fbd = (3 * b^2) + (2 * b) - 12;
    
    b = b - fb / fbd;

    iter = iter + 1;
end

fprintf('Yaklasik kok: %f\n', x);
x
fx = (x^3) + (x^2) - (12 * x)
a
% fa = (a^3) + (a^2) - (12 * a)
b
% fb = (b^3) + (b^2) - (12 * b)

%% plotting

z = [-5:0.1:4.1];

fz = (z.^3) + (z.^2) - (12 * z);

plot(z,fz);

az = gca;
az.XAxisLocation = 'origin';
az.YAxisLocation = 'origin';

hold on;
d = 2;
fd = (d^3) + (d^2) - (12 * d);
plot(d, fd, 'ko', 'markerFaceColor', 'w');
xline(d,'--r');

hold on;
d = 4;
fd = (d^3) + (d^2) - (12 * d);
plot(d, fd, 'ko', 'markerFaceColor', 'w');
xline(d,'--r');

hold on;
plot(3, 0, 'ko', 'markerFaceColor', 'k');
hold on;
plot(0, 0, 'ko', 'markerFaceColor', 'k');
hold on;
plot(-4, 0, 'ko', 'markerFaceColor', 'k');

% box off

%------------- END OF CODE --------------