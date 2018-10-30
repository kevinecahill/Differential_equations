clear all
close all
clc
x = [0:0.001:pi];
plot(x,sin(x),'k','linewidth',1)
hold on
plot(x,sin(x).*(1.0 + 0.2*sin(100.*x)),'k','linewidth',1)
fs = 14;
textx = '$x$'
xlabel(textx,'Interpreter','latex','fontsize',fs)
texty = '$u(x)$ and $u_\omega(x)$'
ylabel(texty,'Interpreter','latex','fontsize',fs)
%textt='Two functions with very different kinetic energies'
%title(textt,'Interpreter','latex','fontsize',fs)
axis([0. pi 0 1.4])
print -dpdf eigen.pdf
print -depsc eigen.eps
print -deps /Users/kevin/papers/math/eigen