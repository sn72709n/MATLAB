clear all; close all; clc;

%n szög történet 2018 12 02
%pontosságosság
%ha fordítva akarnám, hogy megadom a pótpi-t és az milyen sokszög lenne, elég
%valószínû, hogy 1és 3 között lenne a szögek száma, ha nincs értelmezve a
%folytonos szög, akkor nem tudok ilyen ábrát rajzolni..a szimmetriát pedig
%fel kellene adni az alakzat lerajzolhatóságához, és szerintem több alakzat
%is tartozhatna(végtelen) egy pótpihez, tehát nem lenne egyértelmû

figure(1)
hold on;
n=2;
for n=3:10
fi=360/n;



    terulet= (1/4)*n*((2*1*tan(pi/n)).^2)*cot(pi/n)
deltapi= abs(terulet-pi)    
    
plot(n,deltapi,'o')
end    



%for ii=1:n
    
   

 %plot([0, 1] );
%end
