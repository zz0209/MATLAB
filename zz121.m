clc
clear
data=xlsread('data','sheet1','B4:E322');
save data data
load data;
X=data(:,1);
Y=data(:,2);
Z=data(:,3);
[x,y]=meshgrid(0:100:3e4,0:100:2e4);
z=griddata(X,Y,Z,x,y,'v4');
subplot(2,2,1)
% mesh(x,y,z);
data2=xlsread('data','sheet2','B4:I322');
save data2 data2
load data2
As=data2(:,1);
Asz=griddata(X,Y,As,x,y,'v4');
subplot(2,2,2)
% mesh(x,y,Asz);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[c1,d1]=find(data(:,4)==1)
x1=data(c1,1);
y1=data(c1,2);
plot(x1,y1,'r*')
x2=data(c1,3);

% [c2,d2]=find(data(:,));
