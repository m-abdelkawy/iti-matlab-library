function [ nb, xb ] = incsearch( func, xmin, xmax, ns )
%incsearch: incremental search root locator
%   xb = incsearch( func, xmin, xmax, ns)
%       find brackets of x that contain sign changes
%       of a function on an interval

%%%%%%%%%%%%%%%%%%%%%%%%%%
%INPUT:
%%%%%%%%%%%%%%%%%%%%%%%%%%
% func = name of function
% xmin, xmax = endpoints of interval
% ns = number of subintervals (default 50)

%%%%%%%%%%%%%%%%%%%%%%%%%%
%OUTPUT:
%%%%%%%%%%%%%%%%%%%%%%%%%%
% xb(k, 1): is the lower bound of the kth sign change
% xb(k, 2): is the upper bound of the kth sign change
% if no brackets found, xb = []

if nargin < 3
    error('at least 3 arguments required')
end
if nargin < 4
    ns = 50; % if ns is blank set to 50
end

%%%Incremental Search%%%
x = linspace(xmin, xmax, ns);
f = func(x);

nb = 0; %number of sign changes
xb = []; %xb is empty until sign change detected

for k = 1:length(x)-1
    if sign(f(k)) ~= sign(f(k+1)) %check for sign change
        nb = nb+1;
        %set xb matrix values(lowetr and upper bounds of intervals where roots are located)
        xb(nb, 1) = x(k);
        xb(nb, 2) = x(k+1);
    end
end
if isempty(xb)
    disp('No Brackets Found')
    disp('check interval or increase ns')
else
    disp('number of brackets:')
    disp(ns)
end
end

