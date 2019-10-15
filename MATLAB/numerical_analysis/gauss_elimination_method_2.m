%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

% cikti formatini ayarlama
format compact ; format short ;

% A = [1 2 5 1 ; 3 -4 3 -2 ; 4 3 2 -1 ; 1 -2 -4 -1]
% b = [4 ; 7 ; 1 ; 2]
% x = [3 ; -2 ; 0 ; 5]

% A = [1 2 4 3 5 ; 3 5 3 1 2 ; 1 4 4 2 1 ; 4 1 2 5 3 ; 5 2 1 4 1]
% b = [5 ; 6 ; 7 ; 8 ; 9]
% x = [59.5 ; -67.5 ; 87 ; -55 ; -20.5]

% A = [1 2 -3 -1 ; 0 -3 2 6 ; -3 -1 3 1 ; 2 3 2 -1]
% b = [0 ; -8 ; 0 ; -8]
% x = [-1 ; -2 ; -1 ; -2]

% A = [1 2 1 ; 2 -1 1 ; 3 3 -2]
% b = [8 ; 3 ; 3]
% x = [1 ; 2 ; 3]

A = [1 0 2 ; 2 1 0 ; 3 2 1]
b = [-9 ; 5 ; 4]
% x = [1 ; 3 ; -5]

% b = [-9 5 4]';
% Ab = [1 0 2 ; 2 1 0 ; 3 2 1 ; -9 5 4]

% Ab = A;
% Ab(:,4) = b;

Ab = [A b];

for i = 1:size(Ab,1)
    for j = i:size(Ab,1)
        if Ab(j,i) ~= 0
            Ab(j,:) = Ab(j,:) / Ab(j,i);
        end
    end
    for j = i+1:size(Ab,1)
        Ab(j,:) = Ab(j,:) - Ab(i,:);
    end
end

% Ab(j,:) = Ab(j,:)/Ab(j,j);
Ab

for i = size(Ab,1):-1:1
    for j = 1:size(Ab,2)-1
        if i ~= j
            Ab(i,end) = Ab(i,end) - Ab(i,j) * Ab(j,end);
        end
    end
end

Ab

disp('Result:')

X = Ab(:,end)

disp('Test:')

AxX = A * X

%------------- END OF CODE --------------
