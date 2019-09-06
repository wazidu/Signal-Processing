% function : x*e^x - 1
clear all;
close all;
clc;

error = input ('Enter the percentage of error: ');
xl = 0;
xu = 1;
xr(1) = 0;
for i=1:1:100
    fxl = (xl * exp(xl))-1;
    fxu = (xu * exp(xu))-1;
    xr(i+1)= ((fxu*xl)-(fxl*xu))/(fxu-fxl);
    root = xr(i+1);
    if (fxl*fxu==0)
        break;
    end
    if ((fxl*fxu)>0)
        xl = xr(i+1);
    end
    if ((fxl*fxu)<0)
        xu = xr(i+1);
    end
    err = abs((xr(i+1)-xr(i))/xr(i+1))*100;
    if (err <= error)
        break;
    end
end
root
err