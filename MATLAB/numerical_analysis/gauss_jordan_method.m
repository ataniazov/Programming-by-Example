%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

% cikti formatini ayarlama
format compact ; format short ;

A = [1 2 1 ; 2 -1 1 ; 3 3 -2]
b = [8 ; 3 ; 3]
%x = [1 2 3]';

Ab = [A b]

for i = 1:size(Ab,1)
    for j = 1:size(Ab,2)-1
        if i ~= j
            Ab(j,:) = (-Ab(j,i) / Ab(i,i)) * Ab(i,:) + Ab(j,:);
        end
    end
end

Ab

for i = 1:size(Ab,1)
    Ab(i,:) = Ab(i,:) / Ab(i,i);
end

Ab

disp('Result:')

X = Ab(:,end)

disp('Test:')

AxX = A * X

%------------- END OF CODE --------------