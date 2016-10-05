function [ x ] = SolveLUPivot( A, b )
%SOLVELU Solves Ax = b by decomposing A into LU
% with partial pivoting, then using forward 
% elimination and back substitution to solve for x.
    [L, U, p] = LUwithPivot(A);
    y = Forward(L, b(p,:));
    x = Back(U, y);
end

