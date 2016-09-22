i = 1:10;
t = zeros(1,10);
for n=1:10
    sz = n * 100;
    A = rand(sz);
    b = rand(sz, 1);
    f = @() SolveLU(A, b);
    t(n) = timeit(f);
end

plot(i, t)