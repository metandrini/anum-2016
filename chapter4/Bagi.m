function [ x_star, k ] = Bagi( divsor, tol )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
k = 0;
m = 0;
while (divsor < 0.5) || (divsor > 1)
    if divsor > 1
        divsor = bitsra(divsor,1);
    elseif divsor < 0.5
        divsor = bitsll(divsor,1);
    end
    m = m + 1;
end
x0 = 2.82353 - 1.88235 * divsor;
x1 = 0;
while abs(x1 - x0) > tol
    x1 = x0 + (x0 * (1 - divsor*x0));
    x0 = x1;
    k = k + 1;
end
x_star = bitsra(x1,m);
end

