function [b] =ForwardsubRC(L,b)
% My back substitution after guassian elimination

n=length(b);
%xfinal(n)=b(n)/(A(n,n));
%xfinal=zeros(1,n);
b(1)=b(1)/(L(1,1));
for ii=2:n

%    xfinal(ii)=(b(ii)- dot(A(ii,ii+1:n),xfinal(ii+1:n)))/A(ii,ii);
    b(ii)=(b(ii)- dot(L(ii,1:ii-1),b(1:ii-1)))/L(ii,ii);
end



end
