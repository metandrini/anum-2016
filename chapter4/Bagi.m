function [ x_star, k ] = Bagi( divend, divsor, tol )
%BAGI Summary of this function goes here
%   Source: http://www.cs.utsa.edu/~wagner/CS3343/newton/division.html
k = 0; m = 0;
d = divsor;
% Normalize divsor into d, where 0.5 <= d <= 1
while (d < 0.5) || (d > 1)
    if d > 1
        d = d * 0.5;
    elseif d < 0.5
        d = d * 2;
    end
    m = m + 1;
end
% Initial approximation of x0 = 1/d
x0 = 2.82353 - 1.88235 * d;
x_star = divend * bitsra(x0,m);
while abs(x_star - divend/divsor) > tol
    x1 = x0 + (x0 * (1 - d*x0));
    if divsor >= 1
        x_star = divend * (x1 * 2^-m);
    elseif divsor <= 0.5
        x_star = divend * (x1 * 2^m);
    end
    x0 = x1;
    k = k + 1;
end
end

