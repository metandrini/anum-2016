function [ xt ] = LeastSquares( A, b )
%HOUSEHOLDER Summary of this function goes here
%   Detailed explanation goes here
    [At, bt] = Householder(A, b);
    xt = At\bt;
end

