clc
% a=0.1;
k=10;
fprintf('�ظ���\n')
for i=1:k
    a(i+1)=0.5*a(i)+0.1;
    plot(i,a(i),'o')
    hold on
    fprintf('%d\n', a(i))
end

% plot