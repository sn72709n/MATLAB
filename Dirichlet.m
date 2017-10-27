close all; clear all; clc;
t=0:0.001:10;
ft=(cos(factorial(100)*pi*t)).^(2*10000);
figure(1)

plot(t,ft)
title('Dirichlet function appr.')