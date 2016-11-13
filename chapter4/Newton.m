function [ x_star ] = Newton( x0, tol )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
f = @(x) 1/x - d;
df = @(x) -1/(x^2);
while abs(f(x0)) > tol
    x0 = x0 - f(x0)/df(x0);
end
x_star = x0;
end
