clear all
close all
clc

% n=1;
% d=1;
% sys=tf(n,d);
% step(sys);
% hold on

% x = 10;
% zet = (-log(x/100))/(sqrt(pi^2 + (log(x/100))^2));
% % % Omn = (pi-atan(sqrt(1-0.46^2)/0.46))/(0.8*(sqrt(1-0.46^2)))
% % mid = 2*2.25*zet;
% wn = 1.8/0.8;
% disp('zeta = ')
% disp(zet);
% disp('Wn = ')
% disp(wn);
% disp(Omn);
% disp(mid);

% num = [5.0625];
% den = [1 2.6595 5.0625];
% s=tf(num,den);
% step(s);
% grid on;
% display(stepinfo(s));

% num = [1 5];    
% den = [1 4 1 -6];
% [A,B,C,D] = tf2ss(num,den);
% p = [-2.125+2.906j -2.125-2.906j -5];
% K = acker(A,B,p);
% disp(K);
% Ac = A - (B * K);
% sys1 = ss(Ac,B,C,D);
 
% step(sys1,"red");
% hold on;
% syms x;
% fplot(heaviside(x)); 
% grid on;
% disp(stepinfo(sys1));


