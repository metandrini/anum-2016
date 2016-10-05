function [ L, U, p ] = LUwithPivot( U )
%LUwithPivot Summary of this function goes here
%   Detailed explanation goes here
    n = length(U);
    L = eye(n);
    p = 1:n;
    for i=1:n-1 % column
        [~, x] = max(abs(U(i, i:n))); x = x + (i - 1);
        tmp = U(x,:); U(x,:) = U(i,:); U(i,:) = tmp;
        tmp = p(x); p(x) = p(i); p(i) = tmp;
        tmp = L(x, 1:i-1); L(x, 1:i-1) = L(i, 1:i-1); L(i, 1:i-1) = tmp;
        for j=i+1:n % goingdown
            L(j,i) = U(j,i) / U(i,i);
            U(j,:) = U(j,:) - (L(j,i) * U(i,:));
        end
    end
end

