function [lam1, x1] = rqi(A, k)
% Rayleigh Quotient Iteration
% It takes in a matrix A and number of steps k,
% and returns eigenvalue lam and eigenvector x
[m, n] = size(A);
x = rand(n, 1);
for j=1:k
  u = x / norm(x);              % normalize
  lam = u' * A * u;               % Rayleigh quotient
  x = (A - lam * eye(size(A))) \ u; % inverse power iteration
end
x = x / norm(x);
lam = x'*A*x; 
lam1=lam;
x1=x;
disp(lam1);
disp(x1);

