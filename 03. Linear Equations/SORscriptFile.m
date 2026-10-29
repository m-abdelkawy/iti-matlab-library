%SOR Testing Script File
% Reference (Applied Numerical Methods with Matlab for Engineers 4th Ed-
%Example 12.1
%Define [A] and [b]
A = [3, -0.1, -0.2; 0.1, 7, -0.3; 0.3, -0.2, 10]
b = [7.85, -19.3, 71.4]
xr = SOR (A, b, 1, 0.000001, 100)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

