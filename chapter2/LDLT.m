function [ L, D ] = LDLT( A )
%LDLT Summary of this function goes here
    n = length(A);
    L = eye(n);
    D = 1:n;
    for i=1:n % column
        D(i) = A(i,i);
        L(i+1:n,i) = A(i,i+1:n)' / D(i);
        for j=i+1:n % goingdown
            A(j,j:n) = A(j,j:n) - (L(j,i) * A(i,j:n));
        end
    end
end

