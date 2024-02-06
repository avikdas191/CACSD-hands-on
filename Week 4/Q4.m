close all

num1 = [8];
den1 = [1 8];
sys1 = tf(num1,den1);

num2 = [14.5];
den2 = [1 4 29];
sys2 = tf(num2,den2);

s = sys1 * sys2;
Config = RespConfig('Amplitude',5);
step(s,Config);
grid on;
display(s);

% plot(out.tout);
% tt=out.simout.Time;
% xx=out.simout.Data;
% plot(tt,xx);
% grid on;