function out = c2(alphanull,alpha,fi)
theta=0;

ket=sqrt(2)*alphanull*1i*cos(fi/2);
bra=((pi)^(-(1/4)))*exp(-(1/2)*ket+(sqrt(2))*(exp(-1i*theta))*ket*alpha-(1/2)*(exp(-2*1i*theta))*(ket^2))*exp(-(abs(ket))/2);


out=bra*ket;
end