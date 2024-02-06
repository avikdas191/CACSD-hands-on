close all
clc

num = [23];
den = [1 65];
t = 0:0.0001:0.001;
s=tf(num,den);

alpha=1;
ramp=alpha*t  ;       % Your input signal
model=tf(1,[1 20 3]);    % Your transfer function
[y,t]=lsim(s,ramp,t);
plot(t,y)

% step(s,t);
grid on;
display(s);