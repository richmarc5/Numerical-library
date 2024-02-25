function [xfinal] = BacksubRC(A,b)
% My back substitution after guassian elimination

n=length(b);
xfinal=zeros(1,n);
xfinal(n)=b(n)/(A(n,n));
for ii=n-1:-1:1

    xfinal(ii)=(b(ii)- dot(A(ii,ii+1:n),xfinal(ii+1:n)))/A(ii,ii);

end
    


end