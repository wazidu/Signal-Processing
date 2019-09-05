%function : f(x)=x*e^x - 1
close all;
clear all;
clc;

xl=0;
xu=1;
error = input('Enter error in percentage :' );
xr(1)=0;
for i=1:1:100
    xr(i+1)=(xl+xu)/2;
    
    fxl = (xl*exp(xl))-1;
    fxr = (xr(i+1)*exp(xr(i+1)))-1;
    root = xr(i+1);
    if((fxl*fxr)<0)
        xu=xr(i+1);
    end
    if((fxl*fxr)>0)
        xl=xr(i+1);
    end
    if((fxl*fxr)==0)
        break
    end
    err = abs( (xr(i+1)-xr(i))/(xr(i+1)) )*100;
    if(err<=error)
        break
    end
end

root
err