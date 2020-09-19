clc
% x=[0.1,0.2,0.15,0,-0.2,0.3];
% y=[0.95,0.84,0.86,1.06,1.50,0.72];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% p=polyfit(x,y,2)
% xi=-0.2:0.01:0.3;
% yi=polyval(p,xi);
% subplot(1,2,1);
% plot(x,y,'o',xi,yi,'k')
% title('polyfit')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% p=polyfit(x,y,5) 
% xi=-0.2:0.01:0.3;
% yi=polyval(p,xi);
% subplot(1,2,2);
% plot(x,y,'o',xi,yi,'k')
% title('polyfit')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% xi=-0.2:0.01:0.3;
% yi=interp1(x,y,xi);
% subplot(1,2,1) 
% plot(x,y,'o',xi,yi,'k') 
% title('linear');
% yi=interp1(x,y,xi,'spline');
% subplot(1,2,2)
% plot(x,y,'o',xi,yi,'k') 
% title('spline');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% x=0:4;
% y=2:4;
% [X,Y]=meshgrid(x,y);
% z=[80,82,84;79,61,65;84,84,86];
% subplot(1,2,1)
% mesh(X,Y,Z);
% title('Raw Data')
% xi=0:0.1:4;
% yi=2:0.1:4;
% [XI,YI]=meshgrid(xi,yi);
% Zspline=interp2(X,Y,Z,XI,YI,'spline');
% subplot(1,2,2)
% mesh(XI,YI,Zspline)
% title('Spline')
% %%%%%%%%%%%%%%%%%%%%%%%%%%%
x=[2,3,4;0,2,3;0,1,4];
y=[2,2,2;3,3,3;4,4,4];
subplot(1,2,1)
stem3(x,y,z)
title('Raw Data')
xi=0:.1:4;
yi=2:.1:4;
[XI,YI]=meshgrid(xi,yi);
ZI=griddata(x,y,z,XI,YI,'cubic');
subplot(1,2,2)
mesh(XI,YI,ZI)
title('GRIDDATA')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% c=normrnd(10,2,10,1); 
% c(1)=NaN;
% c(2)=c(2)*10000;
% mean(c)
% nanmean(c)
% trimmean(c,2) 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
