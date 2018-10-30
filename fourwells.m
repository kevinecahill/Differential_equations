clear all
close all
clc
sf = 16; u = 10; v = 0; z = 5; w = 5;  
x0 = [u v z w]; tspan =[0,400]; options = odeset('RelTol',1e-8);
[t,x]=ode45(@dwell,tspan,x0,options); plot(x(:,3),x(:,4),'-k','LineWidth',.001);
textx='$x$';
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty='$y$';
ylabel(texty,'Interpreter','latex','fontsize',sf)

print -deps /Users/kevin/papers/math/DEQsystems/quatrepuits
print -deps /Users/kevin/papers/math/quatrepuits

function xprime = dwell(t,x); r = .2; a = 10; b = 10; g = 1;
xprime = [ - r*x(3)*(x(3)^2 - a^2) - g*x(3)*x(4)^2; ...
    - r*x(4)*(x(4)^2 - b^2) - g*x(4)*x(3)^2; x(1); x(2) ]; 
end


