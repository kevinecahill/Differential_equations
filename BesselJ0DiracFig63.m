clear all
close all
clc
sf = 16;
load J0Zeros5.dat;

x = 0.46:0.000001:0.54;
y = 0.47; a = 0.0;
s = 0.0;
for k = 1: 10000
    s = s + 2.*x.^a.*y.^(1-a).*besselj(0,J0Zeros5(k,2).*x) ...
        .*besselj(0,J0Zeros5(k,2).*y)./(besselj(1,J0Zeros5(k,2)).^2) ; 
end
plot(x,s,'k-','LineWidth',0.25)
hold on

x = 0.46:0.000001:0.54;
y = 0.5; a = 0.5;
s = 0.0;
for k = 1: 10000
    s = s + 2.*x.^a.*y.^(1-a).*besselj(0,J0Zeros5(k,2).*x) ...
        .*besselj(0,J0Zeros5(k,2).*y)./(besselj(1,J0Zeros5(k,2)).^2) ; 
end
plot(x,s,'k-','LineWidth',0.25)

x = 0.46:0.000001:0.54;
y = 0.53; a = 1.0;
s = 0.0;
for k = 1: 10000
    s = s + 2.*x.^a.*y.^(1-a).*besselj(0,J0Zeros5(k,2).*x) ...
        .*besselj(0,J0Zeros5(k,2).*y)./(besselj(1,J0Zeros5(k,2)).^2) ; 
end
plot(x,s,'k-','LineWidth',0.25)

axis([0.46 0.54 -2500 10500])
textx='$x$';
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty='$J_0$ series for \(\delta(x-y)\)';
ylabel(texty,'Interpreter','latex','fontsize',sf)

print -deps /Users/kevin/papers/math/BesselDiracFig6

