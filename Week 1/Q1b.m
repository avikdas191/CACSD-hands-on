% for this transfer function the graphs is very detailed, when I calculated  
% rise time in MATLAB it takes the time taken to reach 90% of the 
% steady state value, but in lecture it said that it should be the time 
% taken to reach 0 to 100% of the steady state value. Even CHATGPT also 
% showed the same result as MATLAB. For now, I will follow the time for
% 100% of the steady state value for an Under-Damped System
close all

num = [1 2];
den = [1 3 6];

s=tf(num,den);
stepplot(s);
grid on;

% step(num,den);
% disp(s);
% disp(stepinfo(s));