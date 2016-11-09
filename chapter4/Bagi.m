function [ x_star, k ] = Bagi( d, tol )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
k = 0;
x0 = 1;
while abs(1/x0 - d) > tol
    x0 = x0 + (x0 * (1 - d*x0));
    k = k + 1;
end
x_star = x0;
end

