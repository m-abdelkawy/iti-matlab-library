function [root,fx,Err,iter]=ModifiedFalsePosition(func,xa,xb,es,maxit)

if nargin<3
    error('at least 3 input arguments are required')
end
test = func(xa)*func(xb); % check change in sign(if no change there are no roots)
if test>0
    error('no sign change - no Roots - change interval')
end
if nargin<4||isempty(es)
    es=0.0001 % Default value es = 0.0001
end
if nargin<5||isempty(maxit)
    maxit=50; % Default value for maximum number of iteration = 50;
end

% Initial values
iter = 0; % incremented by 1 in the Main loop;
xr = xa; % initial value of root = xa;
Err = inf; % initial value of error = infinity;

%Main Loop
    while (Err >= es && iter <= maxit)
        xrold = xr;
        xr = xb-(func(xb)*(xa-xb))/(func(xa)/2-func(xb));
        iter = iter + 1;
        if xr ~= 0
            Err = abs((xr - xrold)/xr) * 100;
        end
        test = func(xa)*func(xr); %check change in sign
            if test < 0
                xb = xr;
            elseif test > 0
                xa = xr;
            else
                Err = 0;
            end
    end
root = xr; fx = func(xr);