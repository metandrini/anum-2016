function [ G ] = Cholesky( A )
%Cholesky Summary of this function goes here
    n = length(A);
    G = zeros(n,n);
    for i=1:n-1 % column
        for j=i+1:n % goingdown
            G(j,i) = (A(j,i) - G(j, 1:i-1) * G(i, 1:i-1)') / G(i,i);
        end
        % something
    end
end

