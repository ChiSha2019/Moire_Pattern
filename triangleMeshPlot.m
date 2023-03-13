close all
clc 
clear
[x,y] = meshgrid(1:150,1:150);
T = delaunay(x,y);
trimesh(T,x,y)