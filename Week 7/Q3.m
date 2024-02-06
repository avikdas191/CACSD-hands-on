clear all
clc

A=[-2 0 0;0 0 1;0 0 -1];
B=[4;0;2];
C=[1 1 0];
disp(A*B);
disp(A*A*B);
disp(C*A);
disp(C*A*A);
Tc=[4 -8 16; 0 2 -2; 2 -2 2];
disp(det(Tc));
L=[-1 -1+1i -1-1i];
k=acker(A',C',L)';
disp(k);