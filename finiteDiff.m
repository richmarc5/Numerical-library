
clear all
close all

h=0.5;
x=[0:h:5];
f=x.^3+x.^2+2*x-1
%f=cos(x);
fprime=2*x+2;
fprime2=2;
k=3;
del=[-k:k]';
%del=[0,1]';
finiteMat = FiniteCoeff (del)
numprime=0;

divpt=0.5*(length(del)+1);
divpt=divpt+2;
order=1;
for ii=1:length(del)

  numprime=numprime+f(divpt+del(ii))*finiteMat(order+1,ii)

end

%-sin(x(divpt))
%tan(x(divpt))*sec(x(divpt))
%2*x(divpt)+2


