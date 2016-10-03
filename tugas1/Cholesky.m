function [ G ] = Cholesky( A )
%Cholesky Summary of this function goes here
    n = length(A);
    G = zeros(n,n);
    G(1,1) = sqrt(A(1,1));
    for i=1:n-1 % column
        for j=i+1:n % goingdown
            G(j,i) = (A(j,i) - G(j, 1:i-1) * G(i, 1:i-1)') / G(i,i);
        end
        G(i+1, i+1) = sqrt(A(i+1, i+1) - G(i+1, 1:i) * G(i+1, 1:i)');
    end
    G(n,n) = sqrt(A(n, n) - G(n, 1:n-1) * G(n, 1:n-1)');
end

