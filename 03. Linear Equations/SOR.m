function xr = SOR (A, b, w, tol, maxit)
% Successive Over Relaxation Method
% x = SOR(A, b, w, tol, maxit)

% Reference (Applied Numerical Methods with Matlab for Engineers 4th Ed-
%%% Input:
% A: Coefficient Matrix
% b: Right hand side vector
% w: is a weighting factor that is assigned a value between 0 and 2.
% tol: stop criterion (default = 0.00001%)
% maxit: Maximum number of iterations (default = 100)

%%% Output:
% x = Solution Vector

%%% Check inputs
if nargin < 2
    error('At least two arguments required');
end

if nargin < 5 || isempty(maxit)
    maxit = 100; %Default Value
end

if nargin < 4 || isempty(tol)
    tol = 0.00001; %Default value
end

if nargin < 3 || isempty(w)
    w = 1.0; % Default Gauss-Seidel if w == 1.0
end

% DETERINE MATRIX SIZE
[m, n] = size(A);

if m~= n
    error('[A] must be a square matrix')
end
    
C = A;

for i = 1:n
    
    C(i, i) = 0; %diagonal elements
    x(i) = 0; % initial guess
end

x = x'; %Transpose x
for i = 1:n
    d(i) = b(i)/A(i, i);
end

iter = 0;
while(1)
    xold = x;
    for i = 1:n
        x(i) = d(i) - C(i,:)*x;
        xr(i) = w.*x(i)+(1-w).*xold(i); % value of x after multiplying by w
        if x(i) ~= 0;
            err(i) = abs((xr(i) - xold(i))/xr(i)) * 100;
        end
    end
    iter = iter + 1;
    if max(err) <= tol || iter >= maxit
        break
    end
end