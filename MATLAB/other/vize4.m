clear all; close all; clc;

syms s t
Fs=(3*(s-3))/(s*(s+2)*(s+3))
ft=ilaplace(Fs)
pretty(ft)