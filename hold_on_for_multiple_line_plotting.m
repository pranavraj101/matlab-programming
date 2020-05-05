%plotting multiple curve in a single figure windows using the commnd hold
%on
clc 
clear all
x=linspace(0,2*pi,100)
hold on 
plot(x,sin(x),'r*')
plot(x,cos(x),'g.')
plot(x,cos(2*x),'b+')
legend('sin(x)','cos(x)','cos(2*x)')