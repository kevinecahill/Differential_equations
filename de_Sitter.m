clear all
close all
clc 
sf = 16; fs = 14; ts = 12
G = 6.67408*10^(-11);
c = 299792458;
rhoc = 8.599*10^(-27);
rhov = 0.6889*rhoc
rhor = 7.8099*10^(-31);
rhom = 0.3111*rhoc;
H0 = 2.192711*10^(-18);
Gyr = 3.156*10^(16);
L0 =1429*c/H0
%L = 2e29; % L > 1429 c/H0 unless k = 0
L = 2e29
longL =L0 
Lyr = 3.156*10^7*c
lambda = sqrt(8*pi*G*rhov/3);
r = sqrt(sqrt(32*pi*G*rhor/3));
m = (6*pi*G*rhom)^(1/3);
%anti de Sitter k = -1
t = -10/H0:10^(12):10/H0;
y = (c/(L*lambda))*abs(sin(lambda.*t));
plot(t/Gyr,y,'k:','Linewidth',2)
hold on
% de Sitter k = -1
w = (c/(L*lambda))*abs(sinh(lambda.*t));
plot(t/Gyr,w,'k--','Linewidth',2)
% de Sitter k = 1
z = (c/(L*lambda))*abs(cosh(lambda.*t));
plot(t/Gyr,z,'k-','Linewidth',2)
axis([-100 100 0 2e-3])
text('Interpreter','latex','String','de Sitter','Position',[31,1.6e-3],'FontSize',fs)
text('Interpreter','latex','String','anti de Sitter','Position',[36,0.85e-3],'FontSize',fs)
textx =('\(t\) (Gyr)');
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty=('$| a(t) |$');
ylabel(texty,'Interpreter','latex','fontsize',sf)
%title('de Sitter spacetimes','fontsize',ts)
print -deps ~/papers/math/DEQfigs/deS.eps
print -deps ~/papers/math/deS.eps