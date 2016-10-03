function [ L, U ] = LU( U )
%LU Computes the lower and upper triangular matrices from matrix A
    n = length(U);
    L = eye(n);
    for i=1:n-1 % column
        for j=i+1:n % goingdown
            L(j,i) = U(j,i) / U(i,i);
            U(j,:) = U(j,:) - (L(j,i) * U(i,:));
        end
    end
end
