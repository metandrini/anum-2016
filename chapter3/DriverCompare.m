A = [1 1 1 1 1; -1 -.5 0 .5 1; 1 .25 0 .25 1]';
b = [1 .5 0 .5 2]';

[At1, bt1] = Householder(A, b);
xls1 = Back(At1, bt1);

[At2, bt2] = G1Givens(A, b);
xls2 = Back(At2, bt2);

disp(xls1);
disp(xls2);