clear all; close all; clc;

%n szög történet 2018 12 02
%pontosságosság
figure(1)
hold on;
ennyiszog=100

n=ennyiszog-1;

fi=2*pi/ennyiszog;

r = 1;
xc = 0;
yc = 0;

theta = linspace(0,2*pi);
x = r*cos(theta) + xc;
y = r*sin(theta) + yc;
plot(x,y)
hold on;
axis equal
 grid on;

v=[1 0];

for ii=0:n+1



R=[cos(fi) -sin(fi); sin(fi) cos(fi)];



u=(R^ii)*(v');
hold on
plot([0 u(2)],[0 u(1)]);
%norm(v)



end

oldal=2*1*tan(pi/ennyiszog);
    kerulet=oldal*ennyiszog;
    format long
   makepi=kerulet/(2*1)
   
   deltapi=abs(pi-makepi)

   
   

