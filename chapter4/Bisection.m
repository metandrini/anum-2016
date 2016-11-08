function [ x_star, k ] = Bisection( f, a, b, tol )
%BISECTION Summary of this function goes here
%   Detailed explanation goes here
k = 0;
f_m = f(a + (b - a)/2);
while (f_m > tol)
    m = a + (b - a) / 2;
    f_m = f(m);
    if (sign(f(a)) == sign(f_m))
        a = m;
    else
        b = m;
    end
    k = k + 1;
    x_star = m;
end
end