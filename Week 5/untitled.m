close all
clc

num = [5];
den = [1 6 5 0];
s=tf(num,den);
% step(s);
% grid on;
display(s);
% display(roots(den));
% display(pole(s));
% damp(den)

% A = [0 1 0; 0 -1 1; 0 0 -5];
% B = [0;0;5];
% C = [1 0 0];
% disp(A*B);
% disp((A^2)*B);
% disp(C*A);
% disp(C*(A^2));
% Tc = [0 0 -5; 0 -5 30; -5 25 -125];
% To = [1 0 0; 0 1 0; 0 -1 1];
% disp(det(Tc));
% disp(det(To));

close all
clc

num = [20 100];
den = [1 5 4 0];
s=tf(num,den);
step(s);
grid on;

display(s);
display(roots(den));
% display(pole(s));
% damp(den)

% A = [0 1 0; 0 0 1; 6 -1 -4];
% B = [0;0;1];
% C = [5 1 0];
% Tc = [0 0 1; 0 1 -4; 1 -4 15];
% To = [5 1 0; 0 5 1; 6 -1 1];
% det(Tc);
% det(To);

[A,B,C,D]=tf2ss(num,den);
disp('A=');
disp(A);
disp('B=');
disp(B);
disp('C=');
disp(C);
disp('D=');
disp(D);