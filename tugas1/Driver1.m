function [ x ] = Driver1( n )
%DRIVER1 Summary of this function goes here
%   Detailed explanation goes here
    x = zeros(2, 10);
    for i = 100:100:n
        A = rand(i, i);
        b = rand(1, i);
        t = cputime;
        Forward(A, b);
        x(1, i/100) = i;
        x(2, i/100) = cputime - t;
    end
end