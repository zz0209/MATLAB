table2array(a)=a1  %aΪ��������ݱ��У�ѧ�����У����ţ�
c=size(a1,3)
b=combntns(set,8)   %��ȡ����
f=zeros(2,(c^2-c)/2)    %���溯��

for i <=(c^2-c)/2
m=all(a(:,b(i,:))),f(1,i)=eval(['o','(\','num2str(b(i,:))',')']),f(2,i)=sum(m),i=i+1 %evalΪ��ָ���������������������������������ж�
end