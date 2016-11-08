function [ x_star, k ] = Secant( func, x0, x1, tol )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
k = 0;
f_x0 = func(x0);
f_x1 = func(x1);
while abs(f_x1) > tol
    tmp1 = x1; tmp2 = f_x1;
    x1 = (x1*f_x0 - x0*f_x1) / (f_x0 - f_x1);
    x0 = tmp1; f_x0 = tmp2;
    f_x1 = func(x1);
    k = k + 1;
end
x_star = x1;
end

