clear all; close all; clc;

%n sz�g t�rt�net 2018 12 02
%pontoss�goss�g
%ha ford�tva akarn�m, hogy megadom a p�tpi-t �s az milyen soksz�g lenne, el�g
%val�sz�n�, hogy 1�s 3 k�z�tt lenne a sz�gek sz�ma, ha nincs �rtelmezve a
%folytonos sz�g, akkor nem tudok ilyen �br�t rajzolni..a szimmetri�t pedig
%fel kellene adni az alakzat lerajzolhat�s�g�hoz, �s szerintem t�bb alakzat
%is tartozhatna(v�gtelen) egy p�tpihez, teh�t nem lenne egy�rtelm�

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
