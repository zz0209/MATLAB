clc
k=4;
a=1000;
for i=1:k
    a(i+1)=(1+0.01)*a(i);
end
a(k)