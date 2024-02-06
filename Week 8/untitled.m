num = [66.25];
den = [1 12.1 13.31 13.31]
sys = tf(num,den);
display(sys);
bode(sys);
grid on;