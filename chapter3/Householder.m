function [ R ] = Householder( A )
%HOUSEHOLDER Generates upper triangular matrix R
% given mxn matrix A (with m>n) via Householder
% factorization.
    [m, n] = size(A);
    e = eye(m);
    R = A;
    for i=1:n
        z = zeros(m,1);
        z(i:m,1) = R(i:m,i);
        v = z + (sign(z(i)) * norm(z) * e(:,i));
        % Calculate A = H * A
        for j=1:n
            x = R(:,j);
            R(:,j) = x - 2*((v'*x)/(v'*v))*v;
        end
    end
end

