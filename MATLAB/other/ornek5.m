clear all; clc;

syms s t
Fs=1/(s*(s+1)^3*(s+3))
ft=ilaplace(Fs)
pretty(ft)