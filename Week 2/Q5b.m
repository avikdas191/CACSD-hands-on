close all

num = [3];
den = [2 1];

s=tf(num,den);
Config = RespConfig('Amplitude',10/3);
% Config = RespConfig('Amplitude',1);
step(s,Config);hold on
% step(s);
grid on;