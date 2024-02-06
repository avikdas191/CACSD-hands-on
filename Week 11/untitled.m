clc
close all
clear all

A=[0 0 1 0; 0 0 0 1; 10.78 0 0 0; -0.98 0 0 0]; %define state-space system in analogue form
B=[0; 0; -1; 1];
C=[1 0 0 0; 0 1 0 0];
D=[0;0];
damp(A); % check s-domain open loop system poles and other system parameters
eig(A); % alternative method to check s-domain OL system poles.
Ts=0.2; %sampling time of the digital controller
[Ad,Bd,Cd,Dd] = c2dm(A,B,C,D,Ts,'zoh'); %converts analogue system to digital form, using 'zero-order-hold' method.
ddamp(Ad, Ts) %check z-domain open loop system poles and other system parameters
P=-1*ones(1,4); % set desired closed-loop poles in s-domain
Pd=exp(P*Ts); % set the corresponding desired closed loop poles in z-domain
K=acker(Ad, Bd, Pd); %find the closed-loop gain matrix K for the digital system, using SVF
ddamp(Ad-Bd*K, Ts) %check the closed-loop poles for the digital system are indeed at z=0.8187, equiv. to s=-1 (z=exp(-1*Ts)) 
eig(Ad-Bd*K) % alternative method to check the CL poles (eigenvalues of CL system matrix) 