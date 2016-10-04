function [ H ] = Householder( A )
%HOUSEHOLDER Summary of this function goes here
%   Detailed explanation goes here
    [m, n] = size(A);
    I = eye(m)
    %for i=1:n
        v = A(:,1) + norm(A(:,1)) * I(:,1);
        if v ~= zeros(m, 1)
            H = eye(m) - 2*(v*v')/(v'*v);
        end
        v = A(:,2) + norm(A(:,2)) * I(:,2);
        if v ~= zeros(m, 1)
            H = eye(m) - 2*(v*v')/(v'*v);
        end
    %end
end

