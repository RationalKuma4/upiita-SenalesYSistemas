%% Pr�ctica 5: Series de Fourier
%
%% Programa serie de Fourier exponencial compleja
%
% La serie de Fourier de una se�al $f(t)$ peri�dica puede ser construida  
% bajo ciertas condiciones matem�ticas (Dirichlet, aunque estas podr�an no 
% cumplirse y a�n as� la serie existir) de la se�al. Si la se�al
% no es peri�dica pero cumple las condiciones, se puede construir la serie de
% Fourier en un intervalo de longitud finita (cuando el intervalo 
% es de longitud infinita se puede abordar a la suma de Fourier, 
% exponencial compleja, como una integral y los coeficientes 
% $D_n$ son muestras de lo que llamamos transformada de Fourier.)
%
% Deber�s realizar algunos problemas con las especificaciones que
% se encuentran al final del documento, para ello se proporciona el 
% siguiente c�digo, que gr�fica la serie de Fourier exponencial compleja.  
%%
%
%   function sfc(t0,tf,dn,d0,f,armo,a,b)
%   % t0 el valor inicial para calcular la serie
%   % tf el valor final donde calcular la serie
%   % dn funci�n de la f�rmula de los dn
%   % f funci�n original
%   % armo n�mero de armonicos a utilizar en la gr�fica
%   % a, b intevalo para realizar la grafica de la serie
% 
%   w0=2*pi/(tf-t0);
% 
%   sf=d0;
%   t=a:0.0001:b;
% 
%   for n=1:armo
%       sf=sf+dn(-n)*exp(w0*-n*t*j)+dn(n)*exp(w0*n*t*j);
%   end
%
%   figure (1)
%   hFig = figure(1);
%   set(hFig, 'Position', [0 0 900 900]) 
%   subplot(3,2,1)
%   plot(t,sf)
%   grid on
%   legend('Serie de Fourier','Location','Best')
%   xlabel('t','FontWeight','bold','FontSize',16)
% 
%   sf=d0;
%   t1=t0:0.0001:tf;
% 
%   for n=1:armo
%       sf=sf+dn(-n)*exp(w0*-n*t1*j)+dn(n)*exp(w0*n*t1*j);
%   end
% 
%   subplot(3,2,2)
%   plot(t1,f(t1),'r')
%   grid on
%   hold on
%   plot(t1,sf)
%   legend('Funci�n original','Serie de Fourier ','Location','Best')
%   xlabel('t','FontWeight','bold','FontSize',16)
%   nn=-armo:armo;
%   axis auto
% 
%   subplot(3,2,4)
%   e=f(t1)-sf;
%   plot(t1,e)
%   title('Error','FontWeight','bold','FontSize',16)
%   xlabel('t','FontWeight','bold','FontSize',16)
%   axis auto
%   grid on
% 
%   subplot(3,2,6)
%   e=f(t1)-sf;
%   area(t1,e.^2)
%   legend('Energia del error','Location','Best')
%   xlabel('t','FontWeight','bold','FontSize',16)
%   axis auto
%   grid on
% 
%   absdn=zeros(1,length(nn));
%   cont=1;
%   for i =-armo:armo
%       if i==0
%           absdn(cont)=d0;
%       end
% 
%       absdn(cont)=dn(i);
%       cont=cont+1;
%   end
% 
%   subplot(3,2,3)
%   stem(w0*nn,abs(absdn))
%   title('Espectro de magnitud D_n ','FontWeight','bold','FontSize',16)
%   xlabel('\omega','FontWeight','bold','FontSize',16)
%   grid on
% 
%   subplot(3,2,5) % %
%   stem(w0*nn,angle(absdn)) % %
%   title('Espectro de fase, \angle de D_n ','FontWeight','bold','FontSize',16) % %
%   xlabel('\omega','FontWeight','bold','FontSize',16)
%   grid on
% 
%   end
%
% Por ejemplo si ejecutamos las siguientes instrucciones
d0=0.504;
dn=inline('0.504/(1+4*n*j)','n');
t0=0;
tf=pi;
f=inline('exp(-t./2)','t');
armo=4;
a=-7;
b=7;
sfc(t0,tf,dn,d0,f,armo,a,b)

%% Realiza lo siguiente:
%
% Para cada problema debes de realizar 
% 
% # Realizar el programa de la serie que se indica
% # Gr�fica de la serie de Fourier en un intervalo que muestre 5
% repeticiones
% # Gr�fica de la se�al y la serie de Fourier para 4 armonicos
% # Gr�fica del error
% # Gr�fica de la energ�a del error
% # Espectro de magnitud  para 4 armonicos
% # Espectro de fase para 4 armonicos
% # Todo lo anterior para 15 armonicos
% 
% Se entrega una publicaci�n en html de tu desarrollo
% 
% * *(20 puntos) Ejemplo 6.1* Con serie  y espectro trigonometrico  
%
% * *(20 puntos) Ejemplo 6.2.* Con serie y espectro 
% exponencial y A=3
% 
% * *(20 puntos) Ejemplo 6.4.* Con serie y espectro exponencial 
%
% * *(20 puntos) Ejercicio 6.5.* Con serie y espectro exponencial
%
% * *(20 puntos) Ejemplo 6.7.* Con serie y espectro exponencial y $T_0=3$ sin incluir la
% gr�fica de f, error ni energ�a del error
%
%
% El c�digo de esta publicaci�n lo puedes encontrar en el siguiente 
% <https://www.dropbox.com/s/1f6b87yxo90hmng/Prac5SySSeriesFourierMayo2017.m?dl=0 enlace>




