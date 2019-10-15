%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

A = [1 0 2 ; 2 1 0 ; 3 2 1];
b = [-9 ; 5; 4];
%b = [-9 5 4]';

dA = det(A);

for i = 1:length(b)
    D=A;
    D(:,i) = b;
    dD=det(D);
    x(i,1)=dD/dA;
end

x

%------------- END OF CODE --------------