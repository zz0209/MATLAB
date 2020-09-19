clc
height=xlsread('COMAP_RollerCoasterData_2018222.xlsx','Y2:Y142');
drop=xlsread('COMAP_RollerCoasterData_2018222.xlsx','Z2:Z142');
p=polyfit(drop',height',1)
y=20:0.1:440;
p_c=polyval(p,y);
plot(y,p_c,'b-.',drop',height','r*')


height2=xlsread('COMAP_RollerCoasterData_2018222.xlsx','Y143:Y300')
drop2=zeros(158,1)

n=156;
for i=1:n
drop2(i,1)=height2(i,1)*1.2738-64.4494;     
end