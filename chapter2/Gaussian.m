function [ U, bt ] = Gaussian( A, b )
%GAUSSIAN Computes the upper triangular matrix from matrix A
    n = length(b);
    B = [A b];
    for i=1:n-1 % column
        for j=i+1:n % goingdown
            m = B(j,i) / B(i,i)
            B(j,:) = B(j,:) - (m * B(i,:));
        end
    end
    U = B(:,1:n);
    bt = B(:,n+1);
end