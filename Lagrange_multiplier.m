clc
clear all
syms x y lam real
%f=input("Enter the function to be maximized in terms of x and y")
%g=input("Enter the constraint function in terms of x and y")
f=x^2-y^2
g=2*y-x^2
[alam,ax,ay]=solve(jacobian(f-lam*g,[x y lam]));
T=subs(f,{x,y},{ax,ay})
for i=1:1:size(T)
    figure 
    fprintf("The points (x,y) is (%d,%d)",double(ax(i)),double(ay(i)))
    fprintf("The value of function is %d",double(T(i)))
    [X1,Y1]=meshgrid(double(ax(i))-3:0.2:double(ax(i))+3,double(ay(i))-3:0.2:double(ay(i))+3)
    zfun=@(x,y)eval(vectorize(f));
    Z1=zfun(X1,Y1)
    contour(X1,Y1,Z1)
    hold on
    h=ezplot(g,[double(ax(i)-3),double(ay(i)-3)]);
    set(h,"color",[1,0.7,0.9])
    plot(double(ax(i)),double(ay(i)),"r.")

end