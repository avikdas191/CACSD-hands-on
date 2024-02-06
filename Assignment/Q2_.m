clear all;  %removes all variables from the current workspace
close all;  %close everything
clf;        %clears current figure window
clc;        %clears command window

num = [1 5];        %numerator of the transfer fn. is defined
den = [1 4 1 -6];   %denominator of the transfer fn. is defined
[A,B,C,D] = tf2ss(num,den);   %calculates the state-space representation

p = [-1.33+1.815j -1.33-1.815j -7]; %desired close-loop poles
K = place(A,B,p);     %calculates gain matrix K in SVF design
disp('K=');
disp(K);              %display gain matrix value in command window
Ac = A - (B * K);     %calculates the system matrix of a close-loop system
sys = ss(Ac,B,C,D);   %creates a state-space model with new system matrix
disp(stepinfo(sys));  %displays various system response chraracteristics
step(sys);            %step response of the system
grid on;


% figure(1);

% figure(2);
% t = -1:0.001:10;
% plot(t,heaviside(t),'color',"#A2142F");  %generates unit-step function
% hold on
% step(sys);                               
% axis([-1 6 0 1.2]);
% grid on;



% disp(det(ctrb(A,B))); %controllability test
% display(roots(den));
% display(pole(s));
% damp(sys) %damping ratio, natural frequency, time constant

% A = [0 1 0; 0 0 1; 6 -1 -4];
% B = [0;0;1];
% C = [5 1 0];
% Tc = [0 0 1; 0 1 -4; 1 -4 15];
% To = [5 1 0; 0 5 1; 6 -1 1];
% det(Tc);
% det(To);
