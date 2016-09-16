for i=100:100:1000
    A = rand(i, i);
    t = cputime;
    Lower(A);
    e = cputime - t
end