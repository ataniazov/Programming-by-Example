%------------- BEGIN CODE --------------

% ekran ve bellek on temizleme
close all ; clear all ; clc ;

xa = 1;
%xu = 3;
xu = 7;

tol = 0.0001;

xo = (xa + xu) / 2;

%fxo = (xo^2)-5;
%fxa = (xa^2)-5;

fxo = xo^3 + xo^2 - 12 * xo;
fxa = xa^3 + xa^2 - 12 * xa;

iter = 0;
while (abs(fxo) > tol)
    if (fxa * fxo) < 0
        xu = xo;
    else
        xa = xo;
    end
    
    xo = (xa + xu) / 2;
    
    %fxo = (xo^2)-5;
    %fxa = (xa^2)-5;
    
    fxo = xo^3 + xo^2 - 12 * xo;
    fxa = xa^3 + xa^2 - 12 * xa;
    
    iter = iter + 1;
end

xo
fxo
iter

%------------- END OF CODE --------------