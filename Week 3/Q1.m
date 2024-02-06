close all
clc

M = 0.5;
m = 0.2;
b = 0.1;
L = 0.3;
I = 0.006;
g = 9.8;
 
q = (M + m) * (I + (m * L^2)) - (m * L)^2 ;
a1 = (m * L) / q ;
b1 = - ((b * m * g * L) / q) ;
b2 = - (((M + m) * m * g * L) / q) ;
b3 = (b * (I + (m * L^2))) / q ;

t=0:0.01:5;
num = [a1];
den = [1 b3 b2 b1];
% s=tf(num,den);
impulse(num,den,t);
grid on;
display(s);