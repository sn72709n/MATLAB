function out = c1(alphanull,alpha,fi)

theta=0;
ket1=sqrt(2)*alphanull*1i*exp(1i*fi/2);
ket2=sqrt(2)*alphanull*1i*exp(1i*fi/2);

bra1=((pi)^(-(1/4)))*exp(-(1/2)*ket1+(sqrt(2))*(exp(-1i*theta))*ket1*alpha-(1/2)*(exp(-2*1i*theta))*(ket1^2))*exp(-(abs(ket1))/2);
bra2=((pi)^(-(1/4)))*exp(-(1/2)*ket2+(sqrt(2))*(exp(-1i*theta))*ket2*alpha-(1/2)*(exp(-2*1i*theta))*(ket2^2))*exp(-(abs(ket2))/2);

out=(bra1*ket1+bra2*ket2);

end