function out = hcoherent(x,alpha)
theta=0;
out=(pi^(-1/4))*(exp((-1/2)*(x^2)+sqrt(2)*exp(-1i*theta)-(1/2)*(exp(-2*1i*theta))*alpha^2))*exp(-((abs(alpha))^2/2));
end