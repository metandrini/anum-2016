function [ x ] = SolveLU( A, b )
%SOLVELU Solves Ax = b by decomposing A into LU,
% then using forward elimination and back 
% substitution to solve for x.
    [L, U] = LU(A);
    y = Forward(L, b);
    x = Back(U, y);
end

