% function: e^-x - x;
clear all;
clc;
x(1)=0;
error = input ('Enter the percentage of error: ');
for i=1:1:100
    fxi=exp(-x(i))-x(i);
    f1xi=-exp(-x(i))-1; 
    x(i+1)=x(i)-(fxi/f1xi); 
    err=abs((x(i+1)-x(i))/(x(i+1)))*100;
    root=x(i+1);
    if(err<=error)
        break
    end
end;
root
err