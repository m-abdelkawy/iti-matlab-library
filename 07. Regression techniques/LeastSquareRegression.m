function [ a ] = LeastSquareRegression( x,y,degree )
[nr,nc]=size(x);
xnr=max(nr,nc);
xnc=min(nr,nc);
[nr,nc]=size(y);
ynr=max(nr,nc);
ync=min(nr,nc);
if xnr~=ynr,error('x and y must have the same length'),end
if xnc~=1,error('x must be a vector'),end
if ync~=1,error('y must be a vector'),end
n=degree+1;
if xnr<n,error('not enough variables for required regression'),end
A=zeros(n,n);
B=zeros(n,1);
XX=zeros(n+1);
for i = 1:n+1
    for j=1:xnr
    XX(i)=XX(i)+x(j).^(i-1);
    end
end
for i = 1:n
    for j=1:n
    A(i,j)=XX(i+j-1);
    end
end
for i=1:n
    for j=1:xnr
    B(i)=B(i)+y(j).*x(j).^(i-1);
    end
end

a=A\B;

end

