function [result] = Simpson38(x,fx)
% Numerical integration of discretized data by
% Simpsons 3/8 rule;
% x = discretized independent data
% fx = discretized dependent data
nPoint = length(x);
% nPoint = calculate number of discrete points (must be odd)
if (nPoint ~= length(fx)), error('Mismatch'); end
nStep = (nPoint - 1)/3;
if (rem(nPoint - 1,3) ~= 0)
    error('Data count does not fit with formula 3*n+1, where n is any positive integer'); 
end
%initlize result = 0
result = 0;
for k = 1:nStep
ii = 3*k - 2;
h = x(ii+1)- x(ii);
%get sum (3h/8)fm = 3hs/8 [ f(i) + 3f(i=0,1,2) + f(3,6,9)odd)
result = result + 3*h/8*(fx(ii) + 3*fx(ii+1) + 3*fx(ii+2)+ fx(ii+3)) ;
end
end