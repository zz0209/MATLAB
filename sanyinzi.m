clc
%三因子模型   
I(1)=5;
S(1)=995;
R(1)=0;
for i=1:100
R(i+1)=R(i)+0.6*I(i);
I(i+1)=I(i)-0.6*I(i)+0.001407*I(i)*S(i);
S(i+1)=S(i)-0.001407*S(i)*I(i);
plot(i,R(i),'o',i,S(i),'--',i,I(i),'*')
hold on
end
