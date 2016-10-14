t_h = zeros(1, 10);
t_g = zeros(1, 10);
for i=1:10
    m = i*100;
    A = rand(m, m/2);
    b = rand(m, 1);
    h = @() Householder(A, b);
    g = @() Givens(A, b);
    t_h(i) = timeit(h);
    t_g(i) = timeit(g);
end
n = 100:100:1000;
x_cont = linspace(100,1000);
coef_h = polyfit(n, t_h, 3);
coef_g = polyfit(n, t_g, 3);
y_h = polyval(coef_h, x_cont);
y_g = polyval(coef_g, x_cont);

plot(n, t_h); hold on;
plot(n, t_g); hold on;
plot(x_cont, y_h); hold on;
plot(x_cont, y_g)