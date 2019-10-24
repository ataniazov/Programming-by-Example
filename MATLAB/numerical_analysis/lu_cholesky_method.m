%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

% cikti formatini ayarlama
format compact ; format short ;

disp("A * x = b")

% a = [4 -2 1 ; 2 3 -1 ; 8 -5 2]

% A = [3 -0.1 -0.2 ; 0.1 7 -0.3 ; 0.3 -0.2 10]
% b = [7.85 ; -19.3 ; 71.4]

% A = [4 12 -16 ; 12 37 -43 ; -16 -43 98]

% A = [25 15 -5 ; 15 18 0 ; -5 0 11]

A = [4 0 6 0 2 ; 0 1 3 0 2 ; 6 3 19 2 6 ; 0 0 2 5 -5 ; 2 2 6 -5 16]
% b = [12 ; 6 ; 36 ; 2 ; 21]
b = [12 ; 4 ; 26 ; -8 ; 27]

% A = [16 4 4 0 0 0 0 0 0 0 ; 4 5 -3 6 0 0 0 10 0 0 ; 4 -3 6 -8 0 2 0 -9 0 0 ; 0 6 -8 17 8 -2 0 13 0 0 ; 0 0 0 8 17 3 2 -1 0 0 ; 0 0 2 -2 3 15 1 -3 3 0 ; 0 0 0 0 2 1 21 -4 -7 0 ; 0 10 -9 13 -1 -3 -4 32 -1 4 ; 0 0 0 0 0 3 -7 -1 10 0 ; 0 0 0 0 0 0 0 4 0 24]
% b = [36 109 -76 188 141 113 68 281 51 272]

disp("A = L * L'")

n = size(A,1)

% L = zeros(size(A));

for i = 1:n
    for j = 1:i
        sum = 0;
        if j == i
            for k = 1:j-1
                sum = sum + L(j,k)^2;
            end
            L(j,j) = sqrt(A(j,j) - sum);
        else
            for k = 1:j-1
                sum = sum + L(i,k) * L(j,k);
            end
            L(i,j) = (A(i,j) - sum) / L(j,j);
        end
    end
    
end

L

disp("L' =")
disp(L')

disp("L * L' =")
disp(L * L')

disp("L * L' * x = b")
disp("L * z = b")
z = zeros(n,1);

for i = 1:n
    sum = 0;
    for j = 1:n
        if i ~= j
            sum = sum + (L(i,j) * z(j));
        end
    end
    z(i) = (b(i) - sum) / L(i,i);
end

z

disp("L' * x = z")
Lt = L';
x = zeros(n,1);

for i = n:-1:1
    sum = 0;
    for j = 1:n
        if i ~= j
            sum = sum + (Lt(i,j) * x(j));
        end
    end
    x(i) = (z(i) - sum) / Lt(i,i);
end

x

%------------- END OF CODE --------------