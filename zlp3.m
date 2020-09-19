%%%%一个更好的AHP程序
%AHP权重计算Matlab程序
%%数据读入
clc
clear
A=[1,2,6;1/2,1,4;1/6,1/4,1];%评判矩阵
%%一致性检验和权向量计算
[n,n]=size(A); [v,d]=eig(A);
r=d(1,1);%Matlab默认把特征值从大往小排列
CI=(r-n)/(n-1);
RI=[0,0,0.58,0.90,1.12,1.24,1.32,1.41,1.45,1.49,1.52,1.54,1.56,1.58,1.59];
CR=CI/RI(n);
if CR<0.1
    CR_result='通过';
    else
    CR_result='不通过';
end
%%权向量
w=v(:,1)/sum(v(:,1));
w=w';
%%%%%%%结果输出
disp('该判断矩阵权向量计算报告：');
disp(['一致性指标：',num2str(CI)]);
disp(['一致性比例：',num2str(CR)]);
disp(['一致性检验结果：',num2str(CR_result)]);
disp(['特征值：',num2str(r)]); disp(['权向量：',num2str(w)]);
