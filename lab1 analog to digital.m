close all;
clear all;
clc;
U = input('Enter the upper range:');
n = input('Enter the bit number:');

q=U/(2^n-1);  % quantization interval
t=0:0.1:U;  % time vector
y=abs(10*sin(t)); % signal
% -------convert to a digital signal yd-----------
a=fix(y/q);
yd=dec2bin(a,n);
% ------ calculating the signal yq ----------
yq=a*q; 
%-------------------------------------------------
plot(t,y,'r')
hold on
plot(t,yq,'b')
hold off
