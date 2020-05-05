%to find the area of the re
clc
clear all
syms x
%y1=input("Enter the upper curve as a function of x")
%y2=input("Enter the lower curve as a function of x")
y1=x
y2=x^2+2*x
t=solve(y1-y2)
t=double(t)
A=int(y1-y2,t(1),t(2))

D=[t(1)-0.2,t(2)+0.2]
hold on
ez1=ezplot(y1,D)
ez2=ezplot(y2,D)
legend('y1','y2')
xlabel('x-axis')
ylabel('f(x)')
fill(x,y,'g')
title("Area of the region enclosed by the curve y1,y2")
xv=linespace(t(1),t(2),3)
y1v=subs(y1,x,xv)
y2v=subs(y2,x,xv)
x==[xv,xv]
y=[y1v,y2v]
