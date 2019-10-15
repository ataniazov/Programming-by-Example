%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

A = [1 0 2 ; 2 1 0 ; 3 2 1];
%b = [-9 ; 5; 4];
b = [-9 5 4]';
x = inv(A) * b

%------------- END OF CODE --------------