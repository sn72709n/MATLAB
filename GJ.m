function [ x ] = GJ( A )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[m,n] = size(A);

for j=1:m-1
   for z=2:m
      if A(j,j)==0
         t=A(j,:);
         A(j,:)=A(z,:);
         A(z,:)=t;
      end
   end
 for i=j+1:m
    A(i,:)=A(i,:)-A(j,:)*(A(i,j)/A(j,j)); 
 end
end

for j=m:-1:2
   for i=j-1:-1:1
      A(i,:)=A(i,:)-A(j,:)*(A(i,j)/A(j,j)); 
   end
end

x=zeros(1,m);
for s=1:m
   A(s,:)=A(s,:)/A(s,s);
   x(s)=A(s,n);
end
end

