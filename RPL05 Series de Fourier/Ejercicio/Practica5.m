%% Práctica 5: Series de Fourier
% Alvarado Balbuena Jorge Anselmo
%% Ejemplo 6.1 Con serie y espectro trigonometrico
%
% $f(t)=e^{t/2}$
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
%% Ejemplo 6.2. Con serie y espectro exponencial y A=3
%
% $f(t)=t$
%
%syms A
t0=0;
tf=2;
a0=0;
an=@(n) 0;
bn=@(n) (8.*A./(n.*pi).^2).*sin((n.*pi)./2);
f=@(t) exp(-t./2);
armo=4;
a=-8;
b=9;
%% Ejemplo 6.4. Con serie y espectro exponencial
%
% $f(t)=1$
%
%% Ejercicio 6.5. Con serie y espectro exponencial
%
% $f(t)=e^{t/2}$
%
%% Ejemplo 6.7. Con serie y espectro exponencial y $T_0=3$ sin incluir la gráfica de f, error ni energía del error
%