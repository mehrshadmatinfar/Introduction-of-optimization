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
yprim = diff(y,x);
xopt = vpasolve(yprim==0, x);

%% plot the function
fplot(y,[lb ub])
grid on

%% plot optimum places of the function
for i = 1:length(xopt)
    yopt(i) = subs(y,x,xopt(i));
    hold on
    plot(xopt(i), yopt(i), 'o')
end