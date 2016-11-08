function [ x_star, k ] = Newton( df, f, x0, tol )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x = x0;
k = 0;
while abs(f(x)) > tol
    x = x - f(x)/df(x);
    k = k + 1;
end
x_star = x;
end
