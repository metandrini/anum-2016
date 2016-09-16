function [ x ] = Lower( A, b )
%LOWER Computes the solution of x to the lower triangular matrix A
    n = length(b);
    x = zeros(n,1);
    x(1) = b(1) / A(1,1);
    for i = 2:n
        sum = (A(i,1:i-1) * x(1:i-1));
        x(i) = (b(i) - sum) / A(i,i);
    end
end