clc
x=(0:1:23);
y=[0.0417,0.0321,0.0236,0.0185,0.0189,0.0199,0.0228,0.0369,0.0514,0.0630,0.0685,0.0697,0.0725,0.0754,0.0761,0.0775,0.0810,0.0839,0.0863,0.0807,0.0781,0.0690,0.0584,0.0519];
yi=y.*3600;
% subplot(1,2,1)
% plot(x,yi)
% hold on
z=mean(yi);
li=linspace(0,23);
k=z*ones(1,length(li));
% subplot(1,2,1)
% plot(li,k,'o')
%%%%%%%%%%%%%%%%%%%%%%%%
c(1)=0;
for t=1:24
c(t+1)=c(t)+yi(t)-z;
% subplot(1,2,2)
% plot(t,c(t),'o')
% hold on
end
ci=c-min(c)
%%%%%%%%%%%%%%%%%%%%%%%%%%
l=1:0.0001:372;
S=126480+500*l+260400./l;
[S_value,S_index]=min(S);
l(S_index)
% for l=1:372
%     S(l)=126480+500*l+260400/l;
%     we=S(l)*
% end
% [S_min,S_index]=min(S)
% 
% L_length=l(S_index)