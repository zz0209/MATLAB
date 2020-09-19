clc
clear
x=-1.5:.01:1.5;
y=-1.5:.01:1.5;
 [a,b]=meshgrid(x,y);
z=(a.^2+2*b.^2).*exp(-a.^2-b.^2);
mesh(x,y,z);
N=1000; x_opt=[];y_opt=[];vmax=-inf;
for i=1:N
   for j=1:N
       v=(a(i)^2+2*b(j)^2+a(i)*b(j))*exp(-a(i)^2-b(j)^2);
       if v>vmax
            vmax=v;x_opt=a(i);y_opt=b(j);
       end
   end
end
x=[x_opt,y_opt]
vmax
