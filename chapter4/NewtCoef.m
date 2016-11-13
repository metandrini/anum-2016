function [ N ] = NewtCoef( x )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
N = zeros(n);
N(n,1) = ones(n,1);
for i=2:n-1
    for j=2:n-1
        N(i,j) = N(i-1, j)*(x( - x(i-1));
    end
end

