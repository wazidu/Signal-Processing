close all;
clear all;
clc;

fprintf('Enter the number of bit string: ');
n=input('');
fprintf('Enter the bit String (0 or 1): \n');
for i=1:1:n
    x(i)=input(' ');
end

s=200;
T=s*n;
dt=n/T;
t=0:dt:n;
y=zeros(1,length(t));
for i=0:n-1
    if(x(i+1)==1)
        y(i*s+1 : (i+1)*s)=1;
    else
         y(i*s+1 : (i+1)*s)=-1;
    end
end
plot(t,y,'b','LineWidth',2);
axis([0 t(end)-0.006 -2 2]);
title('Polar NRZ')
grid on;
