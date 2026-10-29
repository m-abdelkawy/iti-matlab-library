function[xr] = fixedPoint(func, x0, etol)
% Fixed Point Method for calculating root
% Reference (Applied Numerical Methods with Matlab for Engineers 4th Ed-
% chapter 6)
% i: iteration number
% xr: root value for each iteration
% error: (new value of xr - old value )/ old value
title = 'i        xr        error';
line = '---------------------------------';
fprintf('%s\n',title);
fprintf('%s\n',line);

%initial values for error and number of iterations
nit = 0; % number of iterations(starting at 0);
err = inf; % initial value for error = infinity;

%Main loop
while(err > etol)
    nit = nit + 1; %increment iteration by 1
    x1 = double(subs(func, x0)); %substitute x0 in the function to claculate new value of xr
    err = abs((x1 - x0)/x1);
    fprintf('%.f        %.4f        %.4f\n', nit, x1, err);
    x0 = x1; % put the new value in the old value variable and repeat iteration
end
xr = x1;
fprintf('%s\n', line);
end