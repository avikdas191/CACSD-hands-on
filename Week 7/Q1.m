A = [0 1; -2 -3];
C =[2 0];
B = [0;1];
L=[-10 -10];
Ke=acker(A',C',L)';
disp(C*A);
disp(Ke);