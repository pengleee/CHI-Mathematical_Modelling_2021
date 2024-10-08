alpha = [43.5 37.8 36.6 32.7 31.7 29.9 29.9 ];
beta = [39.9 38.55 36.72 39.53 38.96 40.32 39.04];
time = [20 70 110 163 197 240 273];
plot(time,alpha,'red');
hold on;
plot(time,beta,'blue');
grid on;
xlabel('时间');
ylabel('乙醇转化率或C4烯烃选择性');
title('350度时给定某种催化剂组合的乙醇转化率和C4烯烃选择性');
legend('乙醇转化率','C4烯烃选择性');