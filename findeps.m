clear all
close all
eps1=1;
val=1+eps1;
while (val>1)
fprintf('eps= %d \n',eps1)
  
eps1=eps1*0.5;
val=1+eps1;

end


