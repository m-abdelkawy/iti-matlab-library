% Fixed Point Script File
% example 6.1 in(Applied Numerical Methods with Matlab for Engineers 4th
% Ed - chapter 6)
clear;
clc;
syms x;

func1 = exp(-x);
x0 = 0;

xr = fixedPoint(func1, x0, 0.00001)