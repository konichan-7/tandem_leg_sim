clear;
% 声明全局变量
global L1 L2 L3 L4 L5

% 初始化
L1 = 0.16;
L2 = 0.196;
L3 = 0.196;
L4 = 0.16;
L5 = 0;

T_max = 10;
Tp_max = 100;

% 卡尔曼滤波参数
A = [1 1e-2; 0 1];
B = [0; 0]; 
C = eye(2); 
D = 0;
X0 = [0; 0]; 
Q = diag([5e-5, 1e-2]);
R = diag([1, 1]); 


K = lqr_by_leg(0.218);