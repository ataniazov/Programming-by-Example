%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

% cikti formatini ayarlama
format compact ; format short ;

disp("A * x = b")

% A = [4 -2 1 ; 2 3 -1 ; 8 -5 2]

A = [3 -0.1 -0.2 ; 0.1 7 -0.3 ; 0.3 -0.2 10]
b = [7.85 ; -19.3 ; 71.4]

% A = [-1 -2 1 1 ; 2 1 1 0 ; 4 2 3 0 ; 2 5 5 0]
% b = [0 ; 14 ; 28 ; 30]

disp("A = L * U")

n = size(A,1)

% birim matris olusturma
L = eye(n);

U = A;

for i = 1:n-1
    for j = i+1:n
        L(j,i) = U(j,i) / U(i,i);
        U(j,:) = U(j,:) - (U(i,:) * U(j,i)) / U(i,i);
    end
end

L
U

disp('L * U =')
disp(L * U)

disp("L * U * y = b")
disp("L * y = b")
y = zeros(n,1);

for i = 1:n
    sum = 0;
    for j = 1:n
        if i ~= j
            sum = sum + (L(i,j) * y(j));
        end
    end
    y(i) = (b(i) - sum) / L(i,i);
end

y

disp("U * x = b")
x = zeros(n,1);

for i = n:-1:1
    sum = 0;
    for j = 1:n
        if i ~= j
            sum = sum + (U(i,j) * x(j));
        end
    end
    x(i) = (y(i) - sum) / U(i,i);
end

x

%------------- END OF CODE --------------