function [ R, x ] = G1Givens( A, b )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [m, n] = size(A);
    At = [A b];
    for i=1:n
        for j=i+1:m
            a1 = At(i,i);
            a2 = At(j,i);
            r = sqrt(a1^2 + a2^2);
            c = a1/r;
            s = a2/r;
            tmp1 = c * At(i,:) + s * (At(j,:));
            tmp2 = -s * At(i,:) + c * (At(j,:));
            At(i,:) = tmp1;
            At(j,:) = tmp2;
        end
    end
    R = At(1:n,1:n);
    x = At(1:n,n+1);
end

