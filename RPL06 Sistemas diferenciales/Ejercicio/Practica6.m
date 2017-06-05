%% Práctica 6: Sistemas diferenciales
% Alvarado Balbuena Jorge Anselmo
%
%% Configuracion de funcion
% Configuracion de funcion
sympref('HeavisideAtOrigin', 1);

%% Problema a resolver
% Resolver y^(3)+y^(2)+2y^(1)+2y=3x^(2)-x^(1)+2x con y^(2)(0)=1 y^(1)=3
%
% y(0)=2, x(0)=0 x^(1)=1, x(t)=exp(-t)cos(t)u(t)
%
% Para 10 segundos

%% Ejecucion de Funcion
%

sympref('HeavisideAtOrigin', 1);
syms t
Laplace2016a([6 5 1],[1 1],[2,-1],[0],2.*exp(-t),10)