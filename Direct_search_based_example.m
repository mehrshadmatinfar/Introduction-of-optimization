%% Titel
% Direct Search based example

%% cleanings :)
clc
clear
close all

%% Introduc a function
lb = -40;   %lower band
ub = 80;    %uper band

xx = lb:ub;
y = @(x) x.^4 - 50*x.^3 - 1800*x.^2 - 800*x;
% y is handle function (x is functionname)
plot(xx, y(xx))
grid on

n  = 1;
x0 = (ub-lb) * rand(1, n) + lb;
y0 = y(x0);

%% Searching algorithm
    %% input
maxItr = 10;
step = 4;
    %% Calculations
for i=1:maxItr
%     xnew = (ub-lb) * rand(1, n) + lb;
    xnew = x0 + (-1^randi(2)) * step;
    ynew = y(xnew);
    if ynew<y0
        x0 = xnew;
        y0 = ynew;
    end
    hold on
    plot(x0, y0, 'o')
    pause(0.1)
end