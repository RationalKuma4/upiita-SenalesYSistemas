%% Práctica 6: Sistemas diferenciales
% Alvarado Balbuena Jorge Anselmo
%
%% Funcion de Transferencia del Sistema
%
% Parametro funcion x
sympref('HeavisideAtOrigin', 1);
a = [10 7 1];
b = 1;
ciy = [0, 0];
cix = 0;
xi = heaviside(t);
t0 = 10;

% Parametros funcion y

x = Laplace2016a(a, b, ciy, cix, xi, t0);
y = Laplace2016a(a, b, ciy, cix, xi, t0);
disp('Funcion de tranferencia')
pretty(y/x)

%% Respuesta al impulso
%
%

%% Respuesta a entrada cero
%
%

%% Respuesta estado cero
%
%

%% Respuesta total
%
%

%% Respuesta total al escalon en condiciones iniciales
%
%

%% Graficas


