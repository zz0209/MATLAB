clc
[num,txt,raw]=xlsread('COMAP_RollerCoasterData_2018222.xlsx','G2:G301')
clear num
clear raw
% safety=txt(1,300);
 for i=1:300
    safety(i)='steel';
 end
tf_construction=zeros(1,300);
for i=1:300
    tf_construction(i)=strcmp(safety(i),raw(i));%if construction is 'steel', the output is 1(true); otherwise it's 0(false)
end

% for i=1:300
%     if tf_construction(i)=1
%         safety(i)=1;
%     else
%         safety(i)=0;
%     end
% end
        