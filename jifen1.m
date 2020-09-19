clear 
clc
x=0:.01:1;
y=exp((-x.^2/2)/sqrt(2*pi));
% plot(x,y)
N=100;
x2=unifrnd(0,1,1,N);
x3=unifrnd(0,0.4,1,N);
a=find(exp((-x2.^2/2)/sqrt(2*pi))>x3)
b=length(a);
aera=b/N*0.4
