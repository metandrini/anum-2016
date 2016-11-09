function [ x_star, k ] = Bisection( func, a, b, tol )
%BISECTION This function calculates an approximate solution
%   to nonlinear equations by using the Bisection Algorithm
k = 0;
while (b-a) > tol
    x0 = a + (b-a)/2;
    if sign(func(a)) == sign(func(x0))
        a = x0;
    else
        b = x0;
    end
    k = k + 1;
end
x_star = x0;
end

