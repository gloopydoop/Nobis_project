function A = DD(n,h)
% DD(n,h)
%
% One-dimensional finite-difference derivative matrix 
% of size n times n for second derivative:
%
% This function belongs to SG2212.m

e = ones(n,1);
A = spdiags([e -2*e e],-1:1,n,n); % straight from matlab spdiags help
A(1, 1) = -1;                     % BCs
A(end, end) = -1;
A = 1/h^2 .* A;                
