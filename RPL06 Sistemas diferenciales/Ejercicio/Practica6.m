%% Práctica 6: Sistemas diferenciales
% Alvarado Balbuena Jorge Anselmo
%
%% Configuracion de funcion
% Configuracion de funcion
sympref('HeavisideAtOrigin', 1);
syms t

%% Ejecucion de Funcion
%
Laplace2016aV2([6 5 1], [1 1], [2 -1], [0 0], 2.*exp(-t).*heaviside(t), 5)

% Laplace2016aV2([10 7 1], [3 2], [0 0 0], [0 0], 3.*exp(-3.*t).*heaviside(t), 5)

% Laplace2016aV2([1 2 1], [1], [1 2], [0], heaviside(t), 5)

% Laplace2016aV2([2 2 1 1],[2 -1 3],[2 3 1],[0 1],exp(-t)*cos(t)*heaviside(t),5)