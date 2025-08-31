
c = 1:5;                                      % ����������� ��� ����� ������������ ��������� �������
Dt = -0.3:0.003:0.3;                          % �������� �����
T = 100;                                      % �������� 
for i = 1:length(c)
cmap = hsv(length(c));
s = 1;                                         
K = s*abs(sin(c(i)*T*Dt/2)./(c(i)*T*Dt/2));   % ��������� ���������
plot(Dt,K,'color',cmap(i,:));                 % ����������  ���������� ��� ���������
title(['Linear Velocity = ' num2str(c(i))]);
hold on
pause(0.5)
end

