
clear all; close all; clc;
i0=0;            % initial current, in A
v0=0;            % inital voltage on capacitance, in V
A=1;           % Amplitude of source
U0=12;            % initial voltage of source
L=100.1321183;           % inductor, in H
C=0.001;        % capacitance, in F
R=500.323534;            % Resistance, in ohm
w0=1/sqrt(L*C)  % Resonance frequency of LC circuit
w=1*w0;
%h=pi/10;
h=0.0058;         % time step, in s
N=200;           % Total number of time steps
i2=zeros(1,N+1);
v2=zeros(1,N+1);
t=zeros(1,N+1);
t(1)=0;          % Initial value of time
i2(1)=i0;        % Initial value of current
v2(1)=v0;        % Initial value of voltage on capacitance
U(1)=U0;
for n=1:N
    t(n+1)=n*h;
    U(n)=A*(cos(factorial(125)*w*pi*t(n))).^(2*1000);
    U(n+1)=A*(cos(factorial(125)*w*pi*t(n+1))).^(2*1000);
    % RK2 method
    k11=-R/L*i2(n)-1/L*v2(n)+1/L*U(n);
    k12=1/C*i2(n);
    k21=-R/L*(i2(n)+h*k11)-1/L*(v2(n)+h*k12)+1/L*U(n);
    k22=1/C*(i2(n)+h*k11);
    i2(n+1)=i2(n)+h*(0.5*k11+0.5*k21);
    v2(n+1)=v2(n)+h*(0.5*k12+0.5*k22);
end
hold on
plot(t,i2,'k')
title('current reaction')
xlabel('time')
ylabel('current')
figure(2)
plot(t,v2,'b')
title('voltage reaction')
xlabel('time')
ylabel('capacitor voltage')
figure(3)
%ft=(cos(factorial(100)*w*pi*t(n))).^(2*10000);
plot(t,U)
title('original function')
xlabel('time')
ylabel('voltage')
%A*cos(w*t(n));
%cos(w*t(n+1));
%
%
%
%
