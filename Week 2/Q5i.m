close all
clc

num = [121];
den = [2 4.4 60.5];

s=tf(num,den);
step(s);
grid on;
display(s);