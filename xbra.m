function out =xbra(theta,x,dim,alphanull,fi)

%helykoord szerû x mtx:
iksz2=(1/sqrt(2))*(annihilation(dim)*exp(-1i*theta)+annihilation(dim)'*exp(1i*theta));
iksz=(1/sqrt(2))*(annihilation(dim)+annihilation(dim)');



a=[1 0 0 0 0 0 0 0 0 0];
matrix=(pi^-(1/4))*expm((-1/2)*(x^2)-1/2*(transpose((annihilation(dim))^2)+sqrt(2)*x*annihilation(dim)));
b=transpose(sqrt(2)*alphanull*1i*cos(fi/2));

[W]=eig(iksz);
hjaj=[W];

%out=a*matrix*b;
%out=a*matrix*transpose(b);
out=a*matrix*b;
end