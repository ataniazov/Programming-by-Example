% Gauss-Jordan
% 2016-11-30

clc; clear all; close all;

% -2x+y=-1
% 2x-3y=5
% Gauss-Jordan

A=[-2 1 ; 2 -3];
b=[-1 ; 5];

[row, col] = size(A);

tol = 0.0001;

for j=1:row-1
    for z=2:row
        if A(j,j)==0
            t=A(1,:);A(1,:)=A(z,:);
            A(z,:)=t;
        end
    end
    for i=j+1:row
        A(i,:)=A(i,:)-A(j,:)*(A(i,j)/A(j,j));
    end
end

for j=row:-1:2
    for i=j-1:-1:1
        A(i,:)=A(i,:)-A(j,:)*(A(i,j)/A(j,j));
    end
end

for s=1:row
    A(s,:)=A(s,:)/A(s,s);
    x(s)=A(s,col);
end

disp('Gauss-Jordan yontemi:');

A
x'
