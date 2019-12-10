%---------------------- BEGIN CODE ----------------------

% Clear all the previously used variables, close all
% figures and clear screen
close all ; clear all ; clc ;

l = 1e3;

EbNodB=[7];
EbNo=10.^(EbNodB/10);
n=1;

% In-phase symbol generation
si=2*(round(rand(1,l))-0.5);
% Quadrature symbol generation
sq=2*(round(rand(1,l))-0.5);
% Adding the two parallel symbol streams
s=si+1i*sq;
% Random noise generation
w=(1/sqrt(2*EbNo(n)))*(randn(1,l)+1i*randn(1,l));
% Received signal
r=s+w;

% Display the constellation diagram of received signal
figure
hold on
plot([2 -2], [0 0], '-k');  % x-axis
plot([0 0], [2 -2], '-k');  % x-axis
axis([-2 2 -2 2])
plot(r, 'ob')
plot(s, 'or')
title('QPSK constellation at receiver in AWGN');

% Rayleigh channel
h = (randn(1,l) + 1i*randn(1,l)) / sqrt(2);
% bit-streams corrupted by Rayleigh channel & AWGN
y = abs(h).*s + w;

% Display the constellation diagram of received signal
% with Rayleigh fading
figure
hold on
plot([2 -2], [0 0], '-k');  % x-axis
plot([0 0], [2 -2], '-k');  % y-axis
axis([-2 2 -2 2])
plot(y, 'ob')
plot(s, 'or')
title('QPSK constellation at receiver in Rayleigh');

%--------------------- END OF CODE ----------------------