function out = celso2(alphanull,fi)

bra=(pi^(-1/4))*exp(-(2*alphanull^2)*(sin(fi/2))^2)*(exp(1i*(alphanull^2)*sin(fi))+exp(-1i*(alphanull^2)*sin(fi)));
ket1=sqrt(2)*alphanull*1i*exp(1i*fi/2);
ket2=sqrt(2)*alphanull*1i*exp(1i*fi/2);
out=(bra*ket1+bra*ket2);

end