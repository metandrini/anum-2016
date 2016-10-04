function [ H ] = Householder( A )
%HOUSEHOLDER Summary of this function goes here
%   Detailed explanation goes here
    [m, n] = size(A);
    H = eye(m);
    for i=1:n
        v = A(:,i) + norm(A(i:m,i)) * eye(m,1);
        if v ~= zeros(m, 1)
            H = H - 2*(v*v')/(v'*v);
        end
    end
end

