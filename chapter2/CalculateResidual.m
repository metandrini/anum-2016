function [ k, r ] = CalculateResidual( n, p )
% Calculate residual r of LU factorizations with pivoting
% on nxn matrix A manipulated to produce k(A) ranging from
% 1 to p.
    r = zeros(p, 1);
    k = zeros(p, 1);

    % b := A randomly generated b with integer values,
    % with maxValue of 10.
    b = randi(10, [n 1]);

    % Generate random matrix with predetermined k(A).
    A_init = gallery('randsvd', n, 1);

    for i=1:p
        A = A_init;
        A(1,:) = A(2,:) + 10^-(i-1);
        k(i) = cond(A);

        % Solve for x hat using LU with partial pivoting.
        x_hat = SolveLUPivot(A, b);

        % Compute residual using previous calculations.
        r(i) = norm(A * x_hat - b);
    end
end