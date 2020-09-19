clc 
fprintf('a1,      a2,        a3,        a4,    a5\n')

for i=1:200
M=100;
N=1000;
x=ceil(N*rand(1,M));
% model 1
a1=mean(x)*2-1;
% model 2
s=sort(x);
a2=s(50)*2-1;
% model 3
m=max(x);
n=min(x);
a3=m+n;
% model 4
a4=m*(1+1/M);
%model 5
a5=m*(1+1/2/M);
%%%%%%%%%%M
ii=1:200;
plot(ii,a1,'o')
hold on
 fprintf('%10g,    %10g,    %10g,    %10g,    %10g\n',a1,a2,a3,a4,a5)
end


