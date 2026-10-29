% Incremental Search Script File
clear;
clc;
fx1 = @(x) sin(10*x)+cos(3*x);
[nb, xb] = incsearch(fx1, 3, 6, 100)
%fplot(fx1, 3:6)
