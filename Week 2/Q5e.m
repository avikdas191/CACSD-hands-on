close all
clc

num = [3];
den = [2 4];

s=tf(num,den);
Config = RespConfig('Amplitude',2);
impulse(s,Config);
grid on;