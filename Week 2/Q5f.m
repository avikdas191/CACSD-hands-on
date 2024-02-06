close all
clc

num = [1];
den = [1 1 1];

s=tf(num,den);
step(s);
grid on;
display(s);