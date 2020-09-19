clc
k=72;
a=80000;
for i=1:k
    a(i+1)=(1+0.01)*a(i)-880.87;
end
a(k)