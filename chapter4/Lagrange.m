function [ f_x ] = Lagrange( x_i, y_i, t )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n = length(x_i);
l = ones(n,1);
for i=1:n
    for j=1:n
        if i ~= j
            l(i) = l(i) * (t-x_i(j)) / (x_i(i)-x_i(j));
        end
    end
end
f_x = l * y_i;
end

