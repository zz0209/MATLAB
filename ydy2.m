function [y]=ydy2(w,k)
k1=k(1);
k2=k(2);
k3=k(3);
y=k1*(w-k2)^(k3)
