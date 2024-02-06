close all

num = [1];
den = [1 4];

s=tf(num,den);
step(s);
grid on;