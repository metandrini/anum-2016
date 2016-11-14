function [ x_star, k ] = Bagi( divend, divsor, tol )
%BAGI Performs division operation using Newton-Raphson method
%   Source: http://www.cs.utsa.edu/~wagner/CS3343/newton/division.html
k = 0; m = 0;
d = divsor;
% Normalize divsor into d, where 0.5 <= d <= 1
while (d < 0.5) || (d > 1)
    if d > 1
        d = d * 0.5;
        m = m - 1;
    elseif d < 0.5
        d = d * 2;
        m = m + 1;
    end
end
% Initial approximation of x0 = 1/d
x0 = 2.82353 - 1.88235 * d;
x_star = divend * (x0 * 2^m);
while abs(x_star - divend/divsor) > tol
    x0 = x0 * (2 - d*x0);
    x_star = divend * (x0 * 2^m);
    k = k + 1;
end
end

