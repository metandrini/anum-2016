function [ x ] = Back( A, b )
%UPPER Computes the solution of x to the upper triangular matrix A
    n = length(b);
    x = zeros(n,1);
    x(n) = b(n) / A(n,n);
    for i=n-1:-1:1
        sum = A(i,i+1:n) * x(i+1:n);
        x(i) = (b(i) - sum) / A(i,i);
    end
end

