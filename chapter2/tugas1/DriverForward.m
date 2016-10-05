i = [1 2 3 4 5 6 7 8 9 10];
t = zeros(1,10);
for n=100:100:1000
    [L, U] = LU(rand(n));
    b = rand(n, 1);
    f = @() Forward(L, b);
    t(n/100) = timeit(f);
end