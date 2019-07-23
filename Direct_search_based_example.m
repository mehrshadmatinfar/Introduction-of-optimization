%% Titel
% Direct Search based example

%% cleanings :)
clc
clear
close all

%% Introduc a function
lb = -40;   %lower band
ub = 80;    %uper band

% x = lb:ub;
y = @(x) x.^4 - 50*x.^3 - 1800*x.^2 - 800*x;
% y is handle function (x is functionname)

n  = 1;
x0 = (ub-lb) * rand(1, n) - lb;
y0 = y(x0);

%% Searching algorithm
maxItr = 10;
for i=1:maxItr
    xnew = (ub-lb) * rand(1, n) - lb;
    ynew = y(xnew);
    if ynew<y0
        x0 = xnew;
        y0 = ynew;
    end
    hold on
    plot(x0, y0, 'o')
    pause(0.1)
end