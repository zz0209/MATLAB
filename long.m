%读取图像，画网格，并进行选点
%选点前应该先把图像放大，即先隐去ginput,然后再次运行，在进行点击ginput，产生坐标
clear;%清除变量的状态数据  
clc;%清除命令行  
p = imread('dragon.jpg'); %读取图像
     [mm,nn,~] = size(p); %获取图像的大小
     x = 0:nn/8:nn; %假设水平分成8格
     y = 0:mm/8:mm; %假设垂直分成8格
      M = meshgrid(x,y); %产生网格
      N = meshgrid(y,x);  %产生网格
      imshow(p);
      hold on
      plot(x,N,'y'); %画出水平横线
      plot(M,y,'y'); %画出垂直竖线
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%采集点
%%%%%%%%%%%%%%%%%%
% ginput