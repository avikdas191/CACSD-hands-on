close all

num = [3];
den = [2 1];

s=tf(num,den);
% stepplot(s);
step(s);
grid on;