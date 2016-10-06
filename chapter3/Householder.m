function [ R, c ] = Householder( A, b )
%HOUSEHOLDER Generates upper triangular matrix R
% given mxn matrix A (with m>n) via Householder
% factorization.
    [m, n] = size(A);
    At = [A b];
    for i=1:n
        z = At(i:m,i);
        v = z + (sign(z(1)) * norm(z) * eye(m-i+1,1));
        a = 2 / (v' * v);
        % Calculate At = H * At
        for j=i:n+1
            x = At(i:m,j);
            At(i:m,j) = x - a * (v' * x * v);
        end
    end
    R = At(:,1:n);
    c = At(:,n+1);
end

