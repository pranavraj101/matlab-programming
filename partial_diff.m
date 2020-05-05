clc
clear all
syms x y
z=x^2-y^2
x1=2
y1=2
z1=subs(subs(z,x,x1),y,y1)
ezsurf(z,[x1-2,x1+2])
f1=diff(z,x)
slopex=subs(subs(f1,x,x1),y,y1)
[x2,y2]=meshgrid(0:0.25:4,0:0.5:10)
y2=y1*one(size(x2))
hold on 
surf(x2,y2,z2)
t=linespace(-1,1)
x3=x1+t
y3=y1*ones(size(t));
z3=z1+slopex*t
linespace(x3,y3,z3,'color','red','linewidth',2)