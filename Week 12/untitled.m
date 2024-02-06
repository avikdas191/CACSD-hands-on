num = [8];
den = [1 2 4];
sys = tf(num,den);
step(sys);
grid on;
Gz = c2d(sys,0.4);
plot(Gz);