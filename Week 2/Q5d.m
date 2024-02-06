close all

num = [3];
den = [2 4];

s=tf(num,den);
impulse(s);
grid on;