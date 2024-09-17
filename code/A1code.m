clf;

T = (250:25:350)';
alpha = [2.07 5.85 14.97 19.68 36.80]';
r = [ones(5,1),T,T.^2];
ab = r\alpha;
x = (250:1:350);
y = ab(1)+ab(2)*x+ab(3)*x.^2;
plot(x,y);
hold on;

plot(T,alpha);
xlabel('温度');
ylabel('乙醇转化率');
title('A1组合催化剂');
grid on;

clc;