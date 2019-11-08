%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

format short; format compact;

x = [50 100 100 100 100 100 100 100 100 100 50];

t = 0;

fprintf('x =         ');

for n = 0:0.1:1
    fprintf('%6.1f ', n);
end
fprintf('\n');

fprintf('t = %.3f : ', t);
fprintf('%6.2f ', x);
fprintf('\n');

xn = x;
xn(1) = 0;
xn(end) = 0;

for t = 0.005:0.005:0.1
    for i = 1:size(x,2)-2
        xn(i+1) = (x(i+2) + x(i)) / 2;
    end
    x = xn;
    fprintf('t = %.3f : ', t);
    fprintf('%6.2f ', x);
    fprintf('\n');
end



%------------- END OF CODE --------------
