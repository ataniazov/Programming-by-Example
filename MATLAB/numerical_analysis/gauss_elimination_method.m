%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

A = [1 0 2 ; 2 1 0 ; 3 2 1];
b = [-9 ; 5; 4];
%b = [-9 5 4]';
%Ab = [1 0 2 ; 2 1 0 ; 3 2 1 ; -9 5 4]

%Ab = A;
%Ab(:,4) = b;

Ab = [A b]

for i = 1:length(b)
    for j = i:length(b)
        Ab(j,:) = Ab(j,:)/Ab(j,i);
    end
    
    for j = i+1:length(b)
        Ab(j,:) = Ab(j,:) - Ab(i,:);
    end
end

%Ab(j,:) = Ab(j,:)/Ab(j,j);

n = size(A,1)

AA = Ab(:,[1:n])
BB = Ab(:,n+1)

x=zeros(n,1)

x(n,1) = BB(n,1)/AA(n,n)

for i = n-1:-1:1
    t = 0;
    for j = i+1:n
        t = t + AA(i,j) * x(j);
    end
    x(i) = (BB(i)-t) / AA(i,i);
end

AA
BB
x

%------------- END OF CODE --------------