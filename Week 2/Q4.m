close all

num = [1];
den = [1 1 1];

s=tf(num,den);
stepplot(s);
grid on;