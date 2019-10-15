clear all; clc;

syms s t
f = 3*t+5*sin(2*t)
F=laplace(f)
pretty(F)