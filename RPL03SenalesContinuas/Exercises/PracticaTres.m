%% Pr�ctica 3: Se�ales continuas
% Alvarado Balbuena Jorge Anselmo
%
%% 
%% Ejercicio 1
% 1. Crea una funci�n que se llame fun1 y reciba dos parametros $\omega$ y $a$ la funci�n debe regresar el resultado $F(\omega)=a/(a^2+\omega^2)$, reporta la grafica $F(\omega)$ vs $\omega$ en el intervalo $[-2,2]$ para $a=1$
fun1 = @(w, a)a./(a.^2+w.^2);
w = -2:1:2;
a = 1;
plot(fun1(w,a));
%% Ejercicio 2
% 2. Para la funci�n $f(t)=e^{-2t}u(t)$ reporta la gr�fica de $f(t)$ de $[-2,5]$, $F(w)$ en $[-10,10]$ el espectro de magnitud y el espectro de fase en $[-10,10]$ (puedes consultar con help la descripci�n de abs y angle)
%% Ejercicio 3
% 3. Realiza las mismas operaciones que Lathi en las secciones M1.1 a M1.4 al final del cap�tulo 1 y antes de la secci�n de probelmas
%% Ejercicio 4
% 4. Resuelve el problema 1.2.1 usando las herramientas del paso anterior.
%% Ejercicio 5
% 5. ejecuta las instrucciones de c�digo simb�lico para encontrar la tranformada de Fourier de $f(t)=e^{-at}u(t)$
%