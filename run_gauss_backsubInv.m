clear all;
close all;

n=8;
A=round(11*rand(n,n));
b=round(12*rand(1,n)');
b=eye(n);
b1=[1;0];
b2=[0;1];
tic
xsol = linsolve(A,b);
toc
tic

%[Anew,bnew] = MyGaussFactorise(A,b);
%toc
%tic
%[xfinal] = BacksubRC(Anew,bnew);
%toc
%figure;
%plot(1:n,xsol,'--+',1:n,xfinal,'o')
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



% [y1] =ForwardsubRC(L,P*b1);
% [xf1] = BacksubRC(U,y1);
% 
% 
% [y2] =ForwardsubRC(L,P*b2);
% [xf2] = BacksubRC(U,y2);

% figure;
% plot(1:n,xsol,'--+',1:n,xf1,'o',1:n,xf2,'o')
% title('inv A')

%%
In=eye(n)

xffull=[];

for kk=1:n
[yn] =ForwardsubRC(L,P*In(:,kk));
[xfnew] = BacksubRC(U,yn);
xffull=[xffull xfnew'];
xfnew=[];
end


figure;
plot(1:n,xsol,'--+',1:n,xffull,'o')
title('inv A system')


round(A*xffull)