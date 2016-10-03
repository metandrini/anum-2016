n = 100:100:1000;
t1 = zeros(1,10); t2 = zeros(1,10);
for i=1:10
    A = rand(n(i));
    b = rand(n(i), 1);
    f = @() SolveLU(A, b); g = @() SolveLUPivot(A, b);
    t1(i) = timeit(f); t2(i) = timeit(g);
end

% table(n.', t1.', 'VariableNames',{'n' 't1'})
% table(n.', t2.', 'VariableNames',{'n' 't2'})