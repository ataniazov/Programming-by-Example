clear all; clc;

syms x y;
f=x*y

subs(f, {x, y}, {x+1, y-2})