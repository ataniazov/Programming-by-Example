%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

% cikti formatini ayarlama
format compact ; format short ;

a = [4 1 1 0 ; 1 4 0 1 ; 1 0 4 1 ; 0 1 1 4]
b = [1 ; 2 ; 0 ; 1]

e = 0.0001; %e = 1e-4;

x = zeros(size(a,2),1);

diff = 1;
iter = 0;
while diff > e
    xn = x;
    for i = 1:size(a,1)
        sum = 0;
        for j = 1:size(a,2)
            if i ~= j
                sum = sum + a(i,j) * xn(j);
            end
        end
        xn(i) = (b(i) - sum) / a(i,i);
    end
    diff = max(abs(xn - x));
    x = xn;
    iter = iter + 1;
end

x
iter

ax = a * x

%------------- END OF CODE --------------