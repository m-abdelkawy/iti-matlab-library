function [ Ig ] = GaussQuadrateTwoPoint( a,b,fx )
% calculate integration between two points 
% by gauss quadrature integration
% a: first point of step
% b: second point of step
h=b-a;
m=(a+b)/2;
gs=@(s) h/2*fx(m+h/2*s);
Ig=gs(1/sqrt(3))+gs(-1/sqrt(3));
end