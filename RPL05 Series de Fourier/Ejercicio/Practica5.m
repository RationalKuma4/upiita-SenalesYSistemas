%% Práctica 5: Series de Fourier
% Alvarado Balbuena Jorge Anselmo
%
%% Ejemplo 6.1 Con serie y espectro trigonometrico
%
%
t0=0;
tf=pi;
a0=0.504;
an=@(n) 0.504.*(2./(1+16.*n.^2));
bn=@(n) 0.504.*(8.*n./(1+16.*n.^2));
f=@(t) exp(-t./2);
armo=4;
a=-8;
b=9;
SerieFourierTrigonometrica(t0, tf, a0, an, bn, f, armo, a, b);
%
%
%% Ejemplo 6.2. Con serie y espectro exponencial y A=3
%
%
A = 6;
d0=0;
dn= @(n) (12i.*sin((n.*pi)/(2)))/(n.*pi).^2;
t0=-0.5;
tf=1.5;
f= @(t) A.*t.*(t>=-0.5 & t<0.5) + A.*(1-t).*(t>=0.5 & t<=1.5);
armo=4;
a=-5;
b=5;
SerieFourierExponencial(t0, tf, dn, d0, f, armo, a, b);
%
%
%% Ejemplo 6.4. Con serie y espectro exponencial
%
%
d0=0.5;
dn= @(n) sin((n.*pi)./2)./(n.*pi);
t0=-0.5;
tf=1.5;
f= @(t) 0.*(t>-pi & t<-pi./2) + 1.*(t>-pi./2 & t<pi./2) + 0.*(t>pi & t<pi./2);
armo=4;
a=-5;
b=5;
SerieFourierExponencial(t0, tf, dn, d0, f, armo, a, b);
%
%
%% Ejercicio 6.5. Con serie y espectro exponencial
%
%
d0=0;
dn= @(n) 0.504./(1+4i.*n);
t0=0;
tf=pi;
f=@(t) exp(-t./2);
armo=4;
a=-9;
b=9;
SerieFourierExponencial(t0, tf, dn, d0, f, armo, a, b);
%
%
%% Ejemplo 6.7. Con serie y espectro exponencial y $T_0=3$ sin incluir la gráfica de f, error ni energía del error
%
%
d0=0;
dn= @(n) 0.504./(1+4i.*n);
t0=0;
tf=pi;
f=@(t) exp(-t./2);
armo=4;
a=-9;
b=9;
SerieFourierExponencial(t0, tf, dn, d0, f, armo, a, b);
%
%