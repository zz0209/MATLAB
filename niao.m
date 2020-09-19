clc
O(1)=200;
H(1)=74;
n=100;
M(1)=150;
for i=1:n
%     O(i+1)=1.2*O(i)-0.001*O(i)*H(i);
%     H(i+1)=1.3*H(i)-0.002*O(i)*H(i);
      M(i+1)=1.2*M(i)-0.001*O(i)*M(i);
      O(i+1)=0.7*O(i)+0.002*O(i)*M(i);
      plot(i,O(i),'o',i,M(i),'*')
      hold on
end
