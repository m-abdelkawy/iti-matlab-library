function [E , steps ] = eigQR ( A )
% Computes eigenvalues of a matrix using the QR method .
% Input : A - square matrix
% Outputs : E - vector of eigenvalues
% steps: the number of iterations it took
[ m, n ] = size ( A );
if m ~= n
warning ('The input matrix is not square.')
return
end
% Set up initial estimate
H = hess ( A );
% H = hess(A) finds H, the Hessenberg form of matrix A.
% [P,H] = hess(A) produces a Hessenberg matrix H and a unitary matrix P 
%  so that A = P*H*P' and P'*P = eye(size(A)) .
% check mathworks website

E = diag ( H );
change = 1;
steps = 0;
% loop while estimate changes
while change > 0
Eold = E ;
% apply QR method
[ Q, R ] = qr( H );
H = R * Q ;
E = diag ( H );
% test change
change = norm ( E - Eold );
steps = steps +1;
end
end