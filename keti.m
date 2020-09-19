clear
clc
x(1)=332;
m=0
%%%%%%%%%%%%%%%%%%
for i=1:10000
    if x(i)>=3;
       x(i+1)=x(i)*3/2
    elseif x(i)<3
    m=100
%     return
    end
    if m=0;
       continue
    end
       break
    

    
end
x