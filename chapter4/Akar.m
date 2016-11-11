function [ x_star, k ] = Akar( a, tol )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
k = 0;
x0 = a/2;
while abs(x0^2 - a) > tol
    x0 = x0/2 + a/(2*x0);
    k = k + 1;
end
x_star = x0;
end