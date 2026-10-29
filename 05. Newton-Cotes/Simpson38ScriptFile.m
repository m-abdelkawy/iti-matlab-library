% f = 2+cos(2sqrt(x));
f=@(x) 2+cos(2*sqrt(x));
x=linspace(0,2,10);
fx=f(x);
[result] = Simpson38(x,fx)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = @(x) 1+exp(-x).*sin(8*(x.^(2/3)));
x=linspace(0,1,2);
fx=f(x);
[result] = Simpson38(x,fx)