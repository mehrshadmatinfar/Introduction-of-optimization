%% Titel
% Gradient based example

%% cleanings :)
clc
clear
close all

%% Introduc a function
lb = -40;   %lower band
ub = 80;    %uper band

x = lb:ub;
y = x.^4 - 50*x.^3 - 1800*x.^2 - 800*x;