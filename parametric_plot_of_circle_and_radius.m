clc
clear all
theta=linspace(0,2*pi,500)
x=3+2*cos(theta)
y=4+2*sin(theta)
plot(x,y)
axis equal
xlabel('x(m)')
ylabel("y(m)")
title("graph of (x-3)^2+(y-4)^2=4")