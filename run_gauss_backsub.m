clear all;
close all;

n=100;
A=41*rand(n,n);
b=12*rand(1,n)';
tic
xsol = linsolve(A,b);
toc
tic

##[Anew,bnew] = MyGaussFactorise(A,b);
##toc
##tic
##[xfinal] = BacksubRC(Anew,bnew);
##toc
##figure;
##plot(1:n,xsol,'--+',1:n,xfinal,'o')
fprintf('Lu decomp \n')
tic
%[L,U]=lu(A);
[L,U,P] = lu(A);



[y] =ForwardsubRC(L,P*b);
[xf] = BacksubRC(U,y);
toc


figure;
plot(1:n,xsol,'--+',1:n,xf,'o')
title('LU version')
