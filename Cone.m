clear all; close all; clc;
a=0:3*pi/100 : 10*pi;

x=a.*(cos(a)+cos(a).*sin(3*a)/4);
y=a.*(sin(a)+sin(a).*sin(3*a)/4);
z=a;
whitebg('w');


plot3(x,y,z)
hold on;
point = [1,2,3];
normal = [1,1,2];

%# a plane is a*x+b*y+c*z+d=0
%# [a,b,c] is the normal. Thus, we have to calculate
%# d and we're set
d = -point*normal'; %'# dot product for less typing

%# create x,y
[xx,yy]=ndgrid(1:10,1:10);

%# calculate corresponding z
z = (-normal(1)*xx - normal(2)*yy - d)/normal(3);

%# plot the surface

surf(xx,yy,z)


%hold on;
%figure;

%[X,Z]=meshgrid(-1:.1:1,-1:.1:1);
%surf(X,X,Z);
figure;
%al=0:3*pi/100 : 100*pi;
%y=sqrt((al.^2).*(1+(1/2).*sin(3*al)+(1/16).*(sin(3*al)).^2)-(al.^2).*(cos(al)+cos(al).*(sin(3*al))/4).^2);
b=0:pi/100:1*2*pi;
x=(cos(b)+cos(b).*sin(3*b)/4);
y=(sin(b)+sin(b).*sin(3*b)/4);
plot(x,y)
