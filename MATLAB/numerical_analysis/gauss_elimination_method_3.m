%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

a = [3 -0.1 -0.2 ; 0.1 7 -0.3 ; 0.3 -0.2 10]
b = [7.85 ; -19.3 ; 71.4]

n = size(a,1)
aa = [a b]

for i = 1:n-1
    aa(i,:) = aa(i,:) / aa(i,i);
    for j = i+1:n
        aa(j,:) = aa(j,:) - (aa(i,:) * aa(j,i)) / aa(i,i);
    end
end

aa(n,:) = aa(n,:) / aa(n,n);
bb = aa(:,n+1);
aa

%------------- END OF CODE --------------