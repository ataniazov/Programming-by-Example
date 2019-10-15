clear all; clc;

syms x y;
f=x*y

subs(f, {x, y}, {2, 3})