function [ x_arr, k ] = SecantDeflation( func, xi, d, tol, n )
% MODIFIED SECANT METHOD WITH DEFLATION
% This method uses the perturbation constant d to
% find a point that is a small distance away from
% the initial point xi.
% 
% For trigonometric functions, the method will yield n
% roots that aren't necessarily next to each other.
% 
% Adjusting the perturbation constant d will yield
% different roots for trigonometric functions.
% 
% Picking the wrong d will result in the method
% not converging (exiting with k = 100 and poor
% approximation).

x_arr = zeros(1, n);
k = 0;
for i=1:n
    f_x = func(xi);
    f_xd = func(xi + d);
    while abs(f_x) > tol && k < 100
        xi = xi - (d * f_x) / (f_xd - f_x);
        f_x = func(xi);
        f_xd = func(xi + d);
        k = k + 1;
    end
    x_arr(i) = xi;
    func = @(x) func(x) / (x - xi);
    xi = xi + d;
end
end
