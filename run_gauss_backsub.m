clear all;
close all;

n=5;
A=10*rand(n,n);
b=10*rand(1,n)';
xsol = linsolve(A,b);



[Anew,bnew] = MyGaussFactorise(A,b);
[xfinal] = BacksubRC(Anew,bnew);

figure;
plot(1:n,xsol,'--+',1:n,xfinal,'o')