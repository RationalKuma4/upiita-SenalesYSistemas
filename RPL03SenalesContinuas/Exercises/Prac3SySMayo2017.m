%% Pr�ctica 3: Se�ales continuas
%
% 
%%
%% Descripci�n general de MATLAB
% <https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-094-introduction-to-matlab-january-iap-2010/lecture-notes/MIT6_094IAP10_lec01.pdf Documento>
%% Crear documento con publish
% Ayuda en linea para publicar <https://www.mathworks.com/help/matlab/matlab_prog/marking-up-matlab-comments-for-publishing.html Publish>
%% Creaci�n de vectores
% <https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-094-introduction-to-matlab-january-iap-2010/lecture-notes/MIT6_094IAP10_lec01.pdf Documento>
% Creamos  vectores (fila)
t1= -10:5; % El punto y coma es para que el resultado no sea desplegado
t2=-2:0.01:15; 
%%
% Para saber las dimensiones 
size(t1)
size(t2)
%% Operaci�n elemento a elemento y matricial
% Las operaciones elemento a elemento nos ayudan a evaluar funciones para
% valores de su dominio al mismo tiempo, el sigueinte c�digo genera error  
%%
% 
%   t1*t1
%       
% En cambio el sigueinte codigo es correcto
t1.*t1

%% Crear funciones
% <https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-094-introduction-to-matlab-january-iap-2010/lecture-notes/MIT6_094IAP10_lec02.pdf Documento>
% 
% Las funciones en MATLAB tienen la siguiente sintaxis
%
%   function [sal1,sal2,sal3]=nombreFuncion(ent1,ent2,ent3)
%       %codigo de la funcion 
%   end
% 
% Algunas notas sobre las funciones
% 
% * El archivo debe guardarse como  nombreFuncion.m
% * Debes de estar trabajando en el directorio donde este tu funci�n para
% poder ocuparla, o agregar el directorio
% * Las salidas y las entradas son opcionales, en este sentido, hay 4 tipos 
% funciones: con entradas y salidas, con salidas sin entrada, con entrada
% sin salidas, sin entradas y sin salidas
%
% �Podr�as escribir varias funciones en el mismo archivo y ocupar unas
% funciones dentro de otras?

%% Algunes funciones implementadas
%
%   help sin 
%   help cos
%   help exp
%   help abs
%   help angle
%   help pi
%   help plot
%   help square
%   help sinc
%   help rectpuls
%   help tripuls
%   help sawtooth
%   help heaviside
%   help dirac
%
% Entonces si ejecutamos alguna de las intrucciones anteriores se
% desplegara una breve descripci�n de la instrucci�n solicitada, si se
% quiere una descripci�n m�s completa tendr�a que ejecutarse _doc sinc_  
% (por ejemplo)o directamente en la ayuda.
%
help sinc

%%
% Como ya tenemos declarado un vecto de valores podr�amos intentar con 
%
sinc(t1)
%% Funciones inline
% Observemos el siguiente c�digo
%%
% 
f = inline('exp(-t).*t+exp(-t).*cos(2*t)','t');
u = inline('t>=0', 't')
p = inline('(t>=0) & (t<1)','t');

%% Gr�ficas: plot, subplot, plot3, edici�n con GUI, generar c�digo de gr�fica


plot([1,3],[5,-4])

figure
plot(t1,sinc(t1))

figure
plot(t2,sinc(t2))

figure
t4=-100:0.1:100;
plot(t4,t4.^3,'LineWidth',2)
grid on
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.Box = 'off';
title('Gr�fica de la se�al f(t)=t^3 ')


figure
t3=-100:0.1:100;
plot3(t3,cos(t3),sin(t3),'LineWidth',2)
grid on
xlabel('Dominio t')
ylabel('Re')
zlabel('Im')
title('Gr�fica de la se�al f(t)=e^{tj} ')

figure
subplot(2,3,1)
plot(0:0.01:5,f(0:0.01:5))

subplot(2,3,2)
plot(t1,u(t1))

subplot(2,3,5)
plot(t2,p(t2))

figure()
plot(t2,u(t2))

figure()
plot(t1,p(t1))
grid on
axis([-12 10, -1, 2])

figure()
subplot(1,2,1)
plot(t1,p(t1))
grid on
axis([-12 10, -1, 2])

subplot(1,2,2)
plot(t2,p(t2))
grid on
axis([-12 10, -1, 2])
%%
% Entonces veamos que sucede con lo siguiente
t=-10:0.001:10;
figure
subplot(2,1,1)
plot(t,p(t))
grid on
axis([-10, 10 -0.5 1.5]) 

subplot(2,1,2)
plot(t,p(t-2))
grid on
axis([-10, 10 -0.5 1.5]) 


%% Un poco de simb�lico
% <https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-094-introduction-to-matlab-january-iap-2010/lecture-notes/MIT6_094IAP10_lec05.pdf Documento>
%
% Realizar las siguientes integrales
% 
% $$\int_a^bxe^{-x}dx,\;\;\int_0^2xe^{-x}dx,\;\;\int_0^\infty xe^{-x}dx$$
% 

syms a b  x 
Q=int(x*exp(-x),a,b)
subs(Q,{a,b},{0,2})
%%
% El sigueinte c�digo produce error 
%
%   subs(Q,{a,b},{0,inf})
% 
% Pero este c�digo no, �Por qu�?
Q=int(x*exp(-x),a,inf)
subs(Q,a,0)



%% Observaciones
% Tener claro que esto no es absoluto, es una manera de implementaci�n en 
% MATLAB, es decir, la implementaci�n de las se�ales podr�a variar incluso
% en el mismo MATLAB, y por supuesto si se utiliza otro software
%% Notas 
% # Guia de Matlab del  <https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-094-introduction-to-matlab-january-iap-2010/index.htm MIT OCW>
% # Backgroun secci?n MB de Lathi

%% Entregables
% Se revisa una publicaci�n (html) de la pr�ctica
%
% # Crea una funci�n que se llame _fun1_ y reciba dos parametros $\omega$ y 
% $a$ la funci�n debe regresar el resultado $F(\omega)=a/(a^2+\omega^2)$,
% reporta la grafica $F(\omega)$ vs $\omega$ en el intervalo $[-2,2]$ 
% para $a=1$
% # Para la funci�n $f(t)=e^{-2t}u(t)$ reporta la gr�fica de $f(t)$ de 
% $[-2,5]$, $F(w)$ en $[-10,10]$ el espectro de magnitud y el espectro de fase 
% en $[-10,10]$ (puedes consultar con help la descripci�n de _abs_ y _angle_)
% # Realiza las mismas operaciones que Lathi en las secciones M1.1 a M1.4
% al final del cap�tulo 1 y antes de la secci�n de probelmas
% # Resuelve el problema 1.2.1 usando las herramientas del paso anterior. 
% # ejecuta las instrucciones de c�digo simb�lico para encontrar la
% tranformada de Fourier de $f(t)=e^{-at}u(t)$ indicada en el sigueinte
% <http://www.mateyasi.org/transformada-de-fourier-continua.html enlace>
%%
% El c�dico de esta publicaci�n lo puedes encontrar en el siguiente enlace
% <https://www.dropbox.com/s/szq6mdu1xxqa19h/Prac3SySMayo2017.m?dl=0 enlace>


