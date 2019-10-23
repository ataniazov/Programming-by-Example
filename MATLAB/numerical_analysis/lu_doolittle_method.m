%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

% cikti formatini ayarlama
format compact ; format short ;

%A = [4 -2 1 ; 2 3 -1 ; 8 -5 2]

a = [3 -0.1 -0.2 ; 0.1 7 -0.3 ; 0.3 -0.2 10]
b = [7.85 ; -19.3 ; 71.4]

n = size(a,1)
% birim matris olusturma
L = eye(n)

U = a

for i = 1:n-1
    for j = i+1:n
        L(j,i) = U(j,i) / U(i,i);
        U(j,:) = U(j,:) - (U(i,:) * U(j,i)) / U(i,i);
    end
end

L
U

LU = L * U

%------------- END OF CODE --------------