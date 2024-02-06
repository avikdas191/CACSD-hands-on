close all
clc

num = [16];
den = [1 4 16];

s=tf(num,den);
step(s);
grid on;
display(s);