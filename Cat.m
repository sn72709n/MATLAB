function out = cat(alphanull,dim)
    fi=0:pi/10:10;
    n=size(fi);
    x=zeros(n(2),1);
  % c1= x*sqrt(2).*alphanull*i*exp(i*(fi/2))+;
    c1=(2/((pi)^4))*exp(-((alphanull).^2*fi.^2)/2).*cos(alphanull^2.*fi);
    c2=1/pi^4;
    vec1=c1.*x';
 %   out=vec1; 
    catv=(sqrt(2)*alphanull.*sin(fi/2)+(-sqrt(2)*alphanull.*sin(fi/2)));
    %catv=norm(catv);
    out=catv;
    %out=c2
    %out=c2;
   % out=n(2);
end