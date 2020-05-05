clc 
clear all
x=linspace(0,2*pi,100)
plot(x,sin(x),'r*';x,cos(x),'g.';x,cos(2*x),'b+')
legend('sin(x)','cos(x)','cos(2*x)')