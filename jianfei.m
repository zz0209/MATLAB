clc
%��һ�׶�
w(1)=100
for k=1:10
    w(k+1)=0.975*w(k)+2.5-0.125*k;
end
m=1:11; 
length(w)
plot(m,w)
hold on
%�ڶ��׶�
for k=11:35
    w(k+1)=0.975*w(k)+1.25;
end
m=0:35;
plot(m,w,'*')
grid on
hold on
% w(1)=100;
% fprintf('\n���˶�\n���� ����\n')
% for k=1:10
%     w(k+1) = 0.97*w(k)+2.5-0.125*k;
fprintf('%g  %.2f\n',k,w(k))
% end
% for k=11:35
%     w(k+1) = 0.97*w(k)+0.125;
%     fprintf('%g  %.2f\n',k,w(k))
% end
% m=0:35;
% plot(m,w,'r'
% 
% % [w_min,l]=
