n = 15;
r = zeros(16, 1);
k = zeros(16, 1);

% b := A randomly generated b with integer values,
% with maxValue of 10.
b = randi(10, [n 1]);

for i=1:16
    % Generate random matrix with predetermined k(A).
    A = gallery('randsvd', n, 10^i);
    k(i) = cond(A);
    
    % Solve for x hat using LU with partial pivoting.
    x_hat = SolveLUPivot(A, b);
    
    % Compute residual using previous calculations.
    r(i) = norm(A * x_hat - b);
    
    % Display kappa of each A and its corresponding
    % residual.
%     disp(['k(A): ', num2str(cond(A), '%.3e')])
%     disp(['   r: ', num2str(r(i), '%.3e')])
end

table(k, r)
x = linspace(1,16,16);
p = polyfit(x,r.',14);
x1 = linspace(1, 16);
r1 = polyval(p,x1);
figure
plot(x,r,'o')
hold on
plot(x1,r1)
hold off