clear all; close all; clc;

syms s t
Fs=(s+4)/(s^2+5*s+6)
ft=ilaplace(Fs)
pretty(ft)