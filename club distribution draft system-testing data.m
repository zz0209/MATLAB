a1=table2array(a) %a为导入的数据表（行：学生；列：社团）
c=size(a1,2)
p=[1:c]
b=combntns(p,2)   %抽取函数
f=zeros(2,(c^2-c)/2)    %储存函数
a1=a1'

for i=1:(c^2-c)/2
m=all(a1(b(i,1):b(i,2)-1:b(i,2),:)),f(1,i)=num2str(b(i,1))+num2str(b(i,2)),f(2,i)=sum(m),i=i+1 %eval为按指定变量命名，储存该社团组合命名方便判断
end