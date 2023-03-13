clc
clear all
close all
x = linspace(0,4,100);
y = x';
%RBG camos simulation
z_R = (1 + sin(pi*x)).*(1 + sin(pi*y));
z_B = (1 - sin(pi*x)).*(1 - sin(pi*y));
z_G = 1 - sin(pi*x).*sin(pi*y);
figure
surf(x,y,z_R);
figure
surf(x,y,z_B);
figure
surf(x,y,z_G);