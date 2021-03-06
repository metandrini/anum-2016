function [ R, c ] = Householder( A, b )
%HOUSEHOLDER Generates upper triangular matrix R
% given mxn matrix A (with m>n) via Householder
% factorization.
    [m, n] = size(A);
    At = [A b];
    I = eye(m, n);
    for i=1:n
        z = At(i:m,i);
        v = z + (sign(z(1)) * norm(z) * I(1:m-i+1,1));
        a = 2 / (v' * v);
        % Calculate At = H * At
        for j=i:n+1
            x = At(i:m,j);
            At(i:m,j) = x - a * (v' * x * v);
        end
    end
    R = At(1:n,1:n);
    c = At(1:n,n+1);
end

