function [ r ] = Driver2( A, b )
%DRIVER2 Computes the 2nd problem for an nxn matrix.
    n = length(A);
    [L, U, p] = LUwithPivot(A);
    for i = 1:n
        Pb(i) = b(p(i));
    end
    y = Forward(L, Pb);
    x = Back(U, y);
    r = norm(A*x - b);
end

