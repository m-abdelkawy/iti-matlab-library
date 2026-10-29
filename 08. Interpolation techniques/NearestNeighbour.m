function [ result ] = NearestNeighbour( x,y,ynew )
% Function Nearest Neighbour takes input x as a vector
% the values of y of vector and the the point to find its nearest solutions 
% check input data at first compare xnrows with ynrows to make
% sure both are of the same length and check if the xncols & xnrows must
% always be equal to 1 else the program is terminated, ynew must be less than or equal 
% to x(1) and greater than x(nrows) else it's out of range 
% we start the loop by seeting the value of cuurent(i) equal to the i 
% a is equal to x(i) and b is equal to x(i+1) , we check if ynew is
% greater than a and ynew is less than or equal to b if true the loop is
% stopped, then check if (ynew-a) is less than or equal to
% (b-ynew) if true result is equal to y(currenti), else result is equal to 
% y(currenti+1) , then the program is terminated.
[nrows,ncols] = size(x);
xnrows = max(nrows,ncols);
xncols = min(nrows,ncols);
[nrows,ncols] = size(y);
ynrows = max(nrows,ncols);
yncols = min(nrows,ncols);
if xnrows ~= ynrows,error('x and y must have the same length'),end
if xncols ~= 1,error('x must be a vector'),end
if yncols ~= 1,error('y must be a vector'),end
if xnrows == 1,error('enter more than one point'),end

if ynew>=x(1) && ynew<=x(xnrows)
    for i = 1:xnrows-1
        currenti = i;
        a = x(i);
		b = x(i+1);
        if ynew >= a && ynew <= b,break,end
    end
    
    if (ynew-a) <= (b-ynew)
        result = y(currenti);
    else
        result = y(currenti+1);
    end
else
    error('out of range');
end


end

