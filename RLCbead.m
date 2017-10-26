%soros rezgokor
%egy újabb lehetseges variálás:változtassunk egy áramköri
%elemet,nevezetesen: az ellenállást
close all; clc; clear all;
prompt={'ellenállás(Ohm):','induktivitás(H):','kapacitás(F):'};
cim='Bemenet';
ssz=2;
alapert={'100','10E-2','1E-4'};
kimenet=inputdlg(prompt,cim,ssz,alapert);
R=str2num(kimenet{1});
L=str2num(kimenet{2});
C=str2num(kimenet{3});

%R=100;
%L=10E-2;
%C=1E-4;
U0=100;
f0=1/(2*pi*((L)*(C))^(1/2))

f=1:0.01:8*f0;
omega=2*pi.*f;
Xc=(f.^-1)/(2*pi*(C));
Xl=2*pi.*f*(L);
figure(1)


 C=1E-4:2E-4
    hold on;
Xc=(f.^-1)/(2*pi.*C);
plot(f,Xc,'r')

Xl=2*pi.*f*L;



grid on
title('A soros RLC impedanciájának, kapacitív ,ill. induktív reaktanciájának frekvenciafüggése')
xlabel('frekvencia(Hz)');
ylabel('ellenállás(Ohm)');
hold on;
plot(f,Xl);

Z=((R^2)+(Xl-Xc).^2).^(1/2);
plot(f,Z,'g')


legend('Xc','Xl','Z')
seged=1:5:min(Z);
plot(f0,seged,'.k')
axis([0  6*f0 0 min(Z)*2])

%mi a Z fgv szélsõértéke?
Z=((R^2)+(Xl-Xc).^2).^(1/2); 

figure(2)

fi=atan((((omega*L)-((omega*C).^-1))/(R))*(180/pi));
fisz=fi*(180/pi);
plot(f,fisz,'g')
grid on
title('A soros RLC fázisszögének frekvenciafüggése')
xlabel('frekvencia(Hz)');
ylabel('fázisszög()');
axis([0 2*f0 -100 100])
figure(3)
title('A soros RLC fázisszögének frekvenciafüggése pol. rsz.')
%f2=1:0.1:6*f0;
%omega=2*pi.*f2;
%polar(f2,atan((((omega*L)-((omega*C).^-1))/(R))))
polar(fi,f)
%axis([-1.5 1.5 -1.5 1.5])
%polar(f,fisz)
%feszültségek
figure(4)
for ell =45:50:200
imp=((ell^2)+(Xl-Xc).^2).^(1/2); 
hold on;
Imax=100./imp;
grid on
title('A soros RLC rezonanciagörbéi(különbözõ ellenállásokra)')
xlabel('frekvencia(Hz)');
ylabel('áramerõsség(amper)');
axis([0 400  0 2.5])
hold on;
plot(f,Imax)
end

figure(5)
for  ind=30:40:250
imp=((100^2)+(ind-Xc).^2).^(1/2); 
hold on;
Imax=100./imp;
grid on
title('A soros RLC rezonanciagörbéi (változó Xl(L))')
xlabel('frekvencia(Hz)');
ylabel('áramerõsség(amper)');
axis([0 75  0 1.5])
hold on;
plot(f,Imax)
end

figure(6)

for  kapa=30:40:250
imp=((100^2)+(Xl-kapa).^2).^(1/2); 
hold on;
Imax=100./imp;
grid on
title('A soros RLC rezonanciagörbéi(változó Xc(C))')
xlabel('frekvencia(Hz)');
ylabel('áramerõsség(amper)');
axis([0 400  0 1.2])
hold on;
plot(f,Imax)
end

figure(7)
Ur=cos(fisz)*U0;
zs=sin(fisz)*U0;
I=U0./Z;
Ul=I.*Xl;
Uc=-(zs-Ul)
title('tranziensek')
plot(f,Uc,'b');
hold on
plot(f,Ul,'g');
plot(f,Ur,'y');
plot(f,(((Ul-Uc).^2)+Ur.^2).^(1/2),'k');
legend('Uc','Ul','Ur','U(ellenõrzés)');


