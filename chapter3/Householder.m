function [ At, bt ] = Householder( A, b )
%HOUSEHOLDER Summary of this function goes here
%   Detailed explanation goes here
    [m, n] = size(A);
    At = [A b];
    for i=1:n
        B = At(i:m,i:n+1);
        x = B(:,1);
        e = eye(m+1-i, 1);
        v = x + (sign(x(1)) * norm(x) * e);
        v = v/norm(v);
        B = B - 2 * v * (v' * B);
        At(i:m,i:n+1) = B;
    end
    bt = At(1:n,n+1);
    At = At(1:n,1:n);
end

