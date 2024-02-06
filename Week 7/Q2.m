clc

a= [0 0 -2; 1 0 9; 0 1 0];
b=[3;2;1];
c = [0 0 1];
L=[-3 -4 -5];
disp(c*a);
disp(c*a*a);
To = [0 0 1; 0 1 0; 1 0 9];
disp(det(To))
ke=acker(a',c',L)';
disp(ke);
