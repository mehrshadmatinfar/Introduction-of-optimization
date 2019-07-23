%% Titel
% Gradient based example

%% cleanings :)
clc
clear
close all

%% Introduc a function
lb = -40;   %lower band
ub = 80;    %uper band

% x = lb:ub;
syms x
y = x.^4 - 50*x.^3 - 1800*x.^2 - 800*x;
plot(x,y)
grid on
yprim = diff(y,x);
xopt = solve(yprime==0, x);