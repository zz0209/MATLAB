table2array(a)=a1  %a为导入的数据表（行：学生；列：社团）
c=size(a1,3)
b=combntns(set,8)   %抽取函数
f=zeros(2,(c^2-c)/2)    %储存函数

for i <=(c^2-c)/2
m=all(a(:,b(i,:))),f(1,i)=eval(['o','(\','num2str(b(i,:))',')']),f(2,i)=sum(m),i=i+1 %eval为按指定变量命名，储存该社团组合命名方便判断
end