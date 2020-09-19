clc
x=0:0.01:1;
% (w1*x+w2)*si=w1*x*s1+w2*s2;
a=[0.1,0.3,0.5,1];
for i=1:4
    s=(x.^2+a(i))./(2*(x+a(i)));
    plot(x,s)
    hold on
end
