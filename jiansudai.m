clc
v=[0,10,20,30,40];
t=[0,1.6,3,4.2,5];
plot(t,v,'o')
hold on
p=polyfit(t,v,2);
ti=0:.01:5;
vi=polyval(p,ti);
subplot(1,2,1)
plot(t,v,'o',ti,vi,'k')
hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%
v1=[40,30,20,10,0];
t1=[6.8,5.5,4.0,2.2,0];
plot(t1,v1,'o')
hold on
p1=polyfit(t1,v1,2);
t1i=6.8:-0.01:0;
v1i=polyval(p1,t1i);
subplot(1,2,2)
plot(t1,v1,'o',t1i,v1i,'k')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
