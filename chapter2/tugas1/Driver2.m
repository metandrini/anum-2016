% n = size of matrix to be tested
% p = max of log(k(A))
% q = how many times to test to average
n = 15;
p = 16;
q = 100;
K = zeros(p, q);
R = zeros(p, q);

for i=1:q
    [k, r] = CalculateResidual(n, p);
    K(:,i) = k;
    R(:,i) = r;
end

k = mean(K.').';
r = mean(R.').';
format short e;
table(k,r)