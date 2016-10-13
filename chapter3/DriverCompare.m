t_f = zeros(1, 10);
t_g = zeros(1, 10);
for i=1:10
    A = rand(i*120, i*100);
    b = rand(i*120, 1);
    f = @() Householder(A, b);
    g = @() Givens(A, b);
    t_f(i) = timeit(f);
    t_g(i) = timeit(g);
end