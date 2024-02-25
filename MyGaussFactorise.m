function [A,b] = MyGaussFactorise(A,b)

% solve a square matrix using gaussian elimination but using a factorised form


n=length(A);
% A=rand(n,n);
In=eye(n);

for ii=1:n
   
    ek=In(:,ii);
    tau=[zeros(1,ii) A(ii+1:end,ii)']*(1/A(ii,ii));   
    Mk=In-tau'*ek';
    A=Mk*A;
    b=Mk*b;
end


end