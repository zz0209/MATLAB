a1=table2array(a) %aΪ��������ݱ��У�ѧ�����У����ţ�
c=size(a1,2)
p=[1:c]
b=combntns(p,2)   %��ȡ����
f=zeros(2,(c^2-c)/2)    %���溯��
a1=a1'

for i=1:(c^2-c)/2
m=all(a1(b(i,1):b(i,2)-1:b(i,2),:)),f(1,i)=num2str(b(i,1))+num2str(b(i,2)),f(2,i)=sum(m),i=i+1 %evalΪ��ָ���������������������������������ж�
end