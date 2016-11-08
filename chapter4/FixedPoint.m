function [ x_star ] = FixedPoint( g, x0, tol )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    x = x0;
    g_x = g(x);
    while (abs(x - g_x) > tol)
        x = g(x);
        g_x = g(x);
        x_star = x;
    end
end

