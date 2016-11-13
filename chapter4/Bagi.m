function [ x_star, k ] = Bagi( divsor, tol )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
k = 0;
m = 0;
d = divsor;
while (d < 0.5) || (d > 1)
    if d > 1
        d = bitsra(d,1);
    elseif d < 0.5
        d = bitsll(d,1);
    end
    m = m + 1;
end
x0 = 2.82353 - 1.88235 * d;
x_star = bitsra(x0,m);
while abs(x_star - 1/divsor) > tol
    x1 = x0 + (x0 * (1 - d*x0));
    if divsor > 1
        x_star = bitsra(x1,m);
    elseif divsor < 0.5
        x_star = bitsll(x1,m);
    end
    x0 = x1;
    k = k + 1;
end
end

