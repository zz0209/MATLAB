%clean
clc 
x_n=0;
x_g_1=0;

for i=1:100
    x_n=(362880*18^(i-1))/(10^(8+2*i));
    x_g_1=x_n+x_g_1;
end
x_g_1