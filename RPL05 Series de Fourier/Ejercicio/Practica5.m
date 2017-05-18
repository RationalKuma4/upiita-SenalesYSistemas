%% Práctica 5: Series de Fourier
% Alvarado Balbuena Jorge Anselmo
%% Ejemplo 6.1 Con serie y espectro trigonometrico
%
% $f(t)=e^{t/2}$
%
d0=0.504;
dn=inline('0.504/(1+4*n*j)','n');
t0=0;
tf=pi;
f=inline('exp(-t./2)','t');
armo=4;
a=-7;
b=7;
sfc(t0,tf,dn,d0,f,armo,a,b)
%% Ejemplo 6.2. Con serie y espectro exponencial y A=3
%
% $f(t)=t$
%
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