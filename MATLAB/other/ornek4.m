clear all; clc;

syms s t
Gs=(5*s+3)/((s+1)*(s+2)*(s+3))
ft=ilaplace(Gs)
pretty(ft)