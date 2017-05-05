%% Práctica 3: Señales continuas
% Alvarado Balbuena Jorge Anselmo
%
%% 
%% Ejercicio 1
% 1. Crea una función que se llame fun1 y reciba dos parametros $\omega$ y $a$ la función debe regresar el resultado $F(\omega)=a/(a^2+\omega^2)$, reporta la grafica $F(\omega)$ vs $\omega$ en el intervalo $[-2,2]$ para $a=1$
fun1 = @(w, a) a./(a.^2+w.^2);
w = -2:0.01:2;
a = 1;
plot(w, fun1(w,a));
%% Ejercicio 2
% 2. Para la función $f(t)=e^{-2t}u(t)$ reporta la gráfica de $f(t)$ de $[-2,5]$, $F(w)$ en $[-10,10]$ el espectro de magnitud y el espectro de fase en $[-10,10]$ (puedes consultar con help la descripción de abs y angle)
t = -2:1:5;
w = -10:0.01:10;
u = @(t) t>=0;
fun2 = @(t) exp(-2.*t).*u(t);
plot(t, fun2(t));
%% Ejercicio 3
% 3. Realiza las mismas operaciones que Lathi en las secciones M1.1 a M1.4 al final del capítulo 1 y antes de la sección de probelmas.
% La funcion es $f(t)=e^{-2t}cos(2 \pi t)$
% 
% * M1.1
f = @(t) exp(-t).*cos(2*pi*t);
g = inline('exp(-t).*cos(2*pi*t)','t');
t = 0;
f(t);
f(0);
t = (-2:2);
f(t);
f = @(t) exp(-t).*cos(2*pi*t);
g = inline('exp(-t).*cos(2*pi*t)','t');
t = 0;
f(t);
f(0);
t = (-2:2);
f(t);
plot(t,f(t))
title('M1.1 Figura 1')
xlabel('t');
ylabel('f(t)');
grid;

figure
t = (-2:0.01:2);
f(t);
plot(t,f(t))
title('M1.1 Figura 2')
xlabel('t');
ylabel('f(t)');
grid;

%
% * M1.2
u = @(t) t>=0;
figure
t0 = (-2:2);
plot(t0, u(t0))
xlabel('t'); 
ylabel('u(t)');
title('Figura M1.2 Figura 1')

figure
t = (-2:0.01:2);
plot(t, u(t))
xlabel('t'); 
axis([-2 2 -0.1 1.1])
ylabel('u(t)');
title('Figura M1.2 Figura 2')

p = @(t) t>=0 & t<1;
figure
t = (-1:0.01:2); 
plot(t,p(t));
xlabel('t'); 
ylabel('p(t) = u(t)-u(t-1)');
axis ([-1 2 -.1 1.1]);
title('Figura M1.2 Figura 3')

%% Ejercicio 4
% 4. Resuelve el problema 1.2.1 usando las herramientas del paso anterior.
%% Ejercicio 5
% 5. ejecuta las instrucciones de código simbólico para encontrar la tranformada de Fourier de $f(t)=e^{-at}u(t)$
%