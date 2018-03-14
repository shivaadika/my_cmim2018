clc
close all
clear variables

tic
x_limit=[-1 1];
y_limit = [-2 2];

x_no_splits=100;
y_no_splits=100;

h = (x_limit(2)-x_limit(1))/x_no_splits;


k = (y_limit(2)-y_limit(1))/y_no_splits;

x=-1:h:1;
y=-2:k:2;

[X,Y]=meshgrid(x,y);

F =X.^2+Y.^2;
A = trapz(y,trapz(x,F,2));

toc