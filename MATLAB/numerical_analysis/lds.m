%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

% cikti formatini ayarlama
format compact ; format short ;

A = [3 -2 ; 1 3 ; -2 1]
b = [-1 ; 7 ; 0]
%x = [1 2]';

x = inv(A' * A) * A' * b

%----------------------------------------

% ekran ve bellek on temizleme
close all ; clear all ;

A = [1 -1 1 1 ; 1 0 1/2 1/2]
b = [0 ; 1]

x = A' * inv(A * A') * b

%------------- END OF CODE --------------