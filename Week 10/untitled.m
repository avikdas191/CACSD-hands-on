num = [1 1];
den = [1 4];
sysc = tf(num, den);
display(sys);

Ts = 0.05;
sysd1 = c2d(sysc,Ts,'zoh');
sysd2 = c2d(sysc,Ts,'tustin');
step(sysc,'blue',sysd1,'black',sysd2,'red');
grid on;