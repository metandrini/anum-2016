function [ xt ] = LeastSquares( A, b )
%HOUSEHOLDER Summary of this function goes here
%   Detailed explanation goes here
    [~, n] = size(A);
    [R, c] = Householder(A, b);
    xt = R\c;
end

