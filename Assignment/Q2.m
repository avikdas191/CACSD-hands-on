    clear all;  %removes all variables from the current workspace
close all;  %close everything
clf;        %clears current figure window
clc;        %clears command window

num = [1 5];        %numerator of the transfer fn. is defined
den = [1 4 1 -6];   %denominator of the transfer fn. is defined
sys = tf(num,den);  %transfer function initialization
display(sys);       %transfer function representation in command window

[A,B,C,D] = tf2ss(num,den);   %calculates the state-space representation
disp('A=');
disp(A);    %display system matrix in command window
disp('B=');
disp(B);    %display input matrix in command window
disp('C=');
disp(C);    %display output matrix in command window
disp('D=');
disp(D);    %display feed forward matrix in command window


% step(sys);  %system response for unit step input
% grid on;

% p = [-1.33+1.815j -1.33-1.815j -7];
% K = place(A,B,p);
% disp(K);
% Ac = A - (B * K);
% sys1 = ss(Ac,B,C,D);
% step(sys1);
% grid on;
% disp(stepinfo(sys1));


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
