%% kezd felt. c=0 ->x0=1 y0=3+1/2=3,5
close all; clc; clear all;
h=0.1;
x(1)=1;
y(1)=3.5;
%1. step
x(2)=0.1+x(1);
%y'=y/x+x*x+3*x-2
%A0=3,5/1+1*1+3*1-2
A(1)=3.5+1+3-2;
y(2)=3.5+h*A(1);
%2. step
x(3)=x(2)+h;
A(2)=(y(2)/x(2))+(x(2))^2+3*x(2)-2;
y(3)=A(2)+h*A(2)

%. step
i=4;
x(i)=x(i-1)+h;
A(i-1)=(y(i-1)/x(i-1))+(x(i-1))^2+3*x(i-1)-2;
y(i)=A(i-1)+h*A(i-1)
%A2=(y2/x2)+(x2)^2+3*x2-2;
%y3=A2+h*A2
for i=2:100
i
x(i)=x(i-1)+h;
A(i-1)=(y(i-1)/x(i-1))+(x(i-1)).^2+3*x(i-1)-2;
y(i)=A(i-1)+h*A(i-1);
plot(x,y)
%z=0:10
%plot(x,((x.^3)/2)+3*x*x-2*x*log(x),'ro-')
end