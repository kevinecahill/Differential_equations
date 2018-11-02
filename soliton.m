clear all
close all
clc
fs = 14; sf = 16; 
om1 = 32; om2 = 30;
x = -10:.01:10;
plot(x,tanh(x),'k-','linewidth',1.5)
%axis([0.8  2.9  0  6])
%grid 'on'
axis([-10 10 -1.5 1.5])
textx='$x$'
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty=('$\phi(x) = \tanh(x)$')
ylabel(texty,'Interpreter','latex','fontsize',sf)
print -dpdf soliton
print -deps /Users/kevin/papers/math/soliton
