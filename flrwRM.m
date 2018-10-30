clear all
close all
clc 
load x2t.dat;
sf = 16; fs = 14; ts=12;
G = 6.67408*10^(-11);
c = 299792458;
rhoc = 8.599*10^(-27);
rhov = 0.6889*rhoc;
rhor = 7.8099*10^(-31);
rhom = 0.3111*rhoc;
H0 = 2.192711*10^(-18);
Gyr = 3.156*10^(16);
L = 1429*c/H0; % L > 1429 c/H0 unless k = 0
longL =L 
Lyr = 3.156*10^7*c
longLinLyr = L/Lyr
lambda = sqrt(8*pi*G*rhov/3);
r = sqrt(sqrt(32*pi*G*rhor/3));
m = (6*pi*G*rhom)^(1/3);
a0 = 0.01;
t = 10^(10):10^(11):1.1/H0;
x = x2t(:,2)/10^9; y = x2t(:,1);
plot(x,y,'k-','Linewidth',2)
hold on
% radiation
z = r*sqrt(t);
plot(t/Gyr,z,'k-.','Linewidth',2)
hold on
maxa_r = L*r^2/(2*c)
% matter
w = m.*t.^(2/3);
plot(t/Gyr,w,'k--','Linewidth',2)
text('Interpreter','latex','String','matter, dark energy, and radiation','Position',...
    [4.7,0.9],'FontSize',fs)
text('Interpreter','latex','String','only matter','Position',...
    [10,0.66],'FontSize',fs)
text('Interpreter','latex','String','only radiation','Position',...
    [10,0.17],'FontSize',fs)
axis([0 14 0 1])
textx =('\(t\) (Gyr)');
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty=('$ a(t) $');
ylabel(texty,'Interpreter','latex','fontsize',sf)
%title('\textbf{Friedmann-Lema{\^i}tre-Robinson-Walker cosmologies}','Interpreter','latex','FontSize',fs) 
%title('\textbf{Friedmann-Lema{\^i}tre-Robinson-Walker cosmologies}','Interpreter','latex','FontSize',ts)
print -deps ~/papers/math/DEQfigs/a.eps
print -deps ~/papers/math/a.eps
print -deps /Users/kevin/papers/math/a.eps