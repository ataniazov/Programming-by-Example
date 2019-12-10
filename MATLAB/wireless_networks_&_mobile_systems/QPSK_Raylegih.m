%---------------------- BEGIN CODE ----------------------

% Clear all the previously used variables, close all
% figures and clear screen
close all ; clear all ; clc ;
% Create a QPSK modulator
QPSK = comm.QPSKModulator;
% Generate data symbols
data = randi([0 3],512,1);
% Apply QPSK modulation
txSig = QPSK(data);
% Display the constellation diagram
% of the transmitted signal
%scatterplot(txSig,1,1,'bo');
%title('Constellation diagram of the transmitted signal');
% Pass txSig through an AWGN channel
rxSig = awgn(txSig,7,'measured');
% Display the constellation diagram of received signal
scatterplot(rxSig,1,1,'bo');
title('QPSK constellation at receiver in AWGN');
% Copy received signal with AWGN fading
rxRaySig = rxSig;
% Apply to Rayleigh fading to the received signal
for u = 1:length(rxRaySig)
    rxRaySig(u) = rxSig(u) * raylrnd(1);
end
% Display the constellation diagram of received signal
% with Rayleigh fading
scatterplot(rxRaySig,1,1,'bo');
title('QPSK constellation at receiver in Rayleigh');

%--------------------- END OF CODE ----------------------
