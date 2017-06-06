function [y] = Laplace2016a(a, b, ciy, cix, xi, t0)
% a coeficientes de las derivadas de la salida menor a mayor [a_0, ..., a_n]
% b coeficientes de las derivadas de la entrada menor a mayor [b_0, ..., b_m]
% ciy condiciones iniciales de la salida de  menor a mayor [y(0), y(0)^(n-1)]
% cix condiciones iniciales de la entrada de menor a meyor [x(0), x^(m-1)(0)]
% xi función de entrada en terminos de la variable simbolica t previamente
% declarada en el command window
% t0 tiempo final para graficar la solucion, la derivada, y la segunda 
% derivada 
% ejemplo: resolver y^(3)+y^(2)+2y^(1)+2y=3x^(2)-x^(1)+2x con y^(2)(0)=1 y^(1)=3
% y(0)=2, x(0)=0 x^(1)=1, x(t)=exp(-t)cos(t)u(t), para 10 segundos, se resuleve como
% syms t
% laplace2016a([2 2 1 1],[2 -1 3],[2 3 1],[0 1],exp(-t)*cos(t)*heaviside(t),10)
    clc;
    clf;
    close all
    tam=size(a);
    tami=size(b);
    syms y(t) Y(s) x(t) X(s) Yy fp;
    syms edd edi 
    edd=0;
    edi=0;
    
    for i=1:tam(2)
       edd=edd+a(i)*s^(i-1)*Y(s);
       for k=1:i-1
           edd=edd-a(i)*(s^(i-1-k)*ciy(k));
       end
    end

    for i=1:tami(2)
       edi=edi+b(i)*s^(i-1)*X(s);
       for k=1:i-1
           edi=edi-b(i)*(s^(i-1-k)*cix(k));
       end
    end
    
%     Mensaje('APLICAMOS TRANSFORMADA DE LAPLACE y subtituimos condiciones iniciales')
%     pretty(edd)
%     disp('=')
%     pretty(edi)
%     Mensaje('SUBSTITUIMOS LA TRANSFORMADA DE LA ENTRADA')

    edi=subs(edi,X(s), laplace(xi));
%     pretty(edd)
%     disp('=')
%     pretty(edi)

%     Mensaje('DESPEJAMOS Y(s)')
    
    edd=collect(edd,Y(s));
    edd=subs(edd,Y(s),Yy);
    
    %%% Entrada cero
    condicionEntradaCero = edd==0;
    ecuacionEntradaCero = solve(condicionEntradaCero, Yy);
    
    %%% Estado cero
    estadoCero = edi;
    
    eq1=edd==edi;
%     disp('Y(s)=')
    edd=solve(eq1, Yy);
%     Mensaje(edd)
%     pretty(edd)

    %%% Para versiones superiores a 2016
%     Mensaje('DESARROLLAMOS LAS FRACCIONES PARCIALES DE Y(s)')
%     disp('Y(s)=')
%     pretty(partfrac(edd))
    %%%% Si se ejecuta en 2015 o menor comentar las 3 lineas anteriores
    
%     Mensaje('Aplicamos transformada inversa, asi la solución es');
    Mensaje('La solución es');
    disp('y(t)=');
    y(t)=ilaplace(edd);
    disp(y(t))
%     pretty(y(t));

    dy(t)=diff(y,t);
    ddy(t)=diff(dy,t);
    
    %%% Grafica de la respuesta a entrada cero
    Mensaje('Respuesta entrada 0');
    solFracParc = partfrac(ecuacionEntradaCero);
    entradaCero = ilaplace(solFracParc);
%     pretty(entradaCero);
    disp(entradaCero);
    
    figure(2);
    subplot(3,2,1);
    fplot(entradaCero, [0,t0],'b','LineWidth',2);
    grid on;
%     legend('Respuesta a entrada 0','Location','Best');
    title('Respuesta a entrada 0')
    xlabel('t','FontWeight','bold','FontSize',16);
    
    %%% Grafica de la respuesta a estado cero
    Mensaje('Respuesta estado 0');
    solFracParc = partfrac(estadoCero);
    estadoCero = ilaplace(solFracParc);
%     pretty(estadoCero);
    disp(estadoCero);
    
    subplot(3,2,2);
    fplot(estadoCero, [0,t0],'b','LineWidth',2);
    grid on;
%     legend('Respuesta a estado 0','Location','Best');
    title('Respuesta al estado 0')
    xlabel('t','FontWeight','bold','FontSize',16);
    
    %%% Grafica de la respuesta total
    Mensaje('Respuesta Total');
    respTotal = entradaCero + estadoCero;
%     pretty(respTotal);
    disp(respTotal);
    
    subplot(3,2,3);
    fplot(respTotal, [0,t0],'b','LineWidth',2);
    grid on;
%     legend('Respuesta Total','Location','Best');
    title('Respuesta Total')
    xlabel('t','FontWeight','bold','FontSize',16);
    
    %%% Funcion de transferencias
    disp('Funcion de tranferencia')
    funcionTransferencia = laplace(estadoCero)./laplace(xi);
    disp(funcionTransferencia);
    pretty(funcionTransferencia);
    
    %%% Grafica respuesta al impulso
    Mensaje('Respuesta al impulso');
    respuestaImpulso = ilaplace(funcionTransferencia);
    disp(respuestaImpulso);
    
    subplot(3,2,4);
    fplot(respuestaImpulso, [0,t0],'b','LineWidth',2);
    grid on;
%     legend('Respuesta al impulso','Location','Best');
    title('Respuesta al impulso')
    xlabel('t','FontWeight','bold','FontSize',16);

    %%% Grafica respuesta al escalon
    Mensaje('Respuesta al escalon');
    respuestaEscalon = funcionTransferencia./s;
    
    subplot(3,2,5);
    fplot(ilaplace(respuestaEscalon), [0,t0],'b','LineWidth',2);
    grid on;
%     legend('Respuesta al escalon','Location','Best');
    title('Respuesta al escalon')
    xlabel('t','FontWeight','bold','FontSize',16);

    
    figure (1)
    hFig = figure(1);
    set(hFig, 'Position', [0 0 900 900])
%     axes1 = axes('Parent',hFig,'FontWeight','bold','FontSize',16);
%     tiempo=0:0.01:t0;
    subplot(2,1,1)
    fplot(xi,[0, t0],'b','LineWidth',2)

    hold on
    fplot(y,[0,t0],'r','LineWidth',2)

    legend('Entrada x(t)','Salida y(t)','Location','Best')
    xlabel('tiempo','FontWeight','bold','FontSize',16)
    title('Entrada y Respuesta del sistema','FontWeight','bold','FontSize',16)
    grid on
    subplot(2,1,2)
    fplot(dy,[0,t0],'g','LineWidth',2)

    hold on
    title('Primera y segunda derivada de la salida','FontWeight','bold','FontSize',16)
    fplot(ddy,[0,t0],'m','LineWidth',2)

    legend('dy(t)/dt','d^2y(t)/d^2t','Location','Best')
    xlabel('tiempo','FontWeight','bold','FontSize',16)
    grid on
end
 
%     %%% Grafica Respuesta total al escalon con condiciones iniciales 0
%     subplot(3,2,4);
%     plot(t,sf);
%     grid on;
%     legend('Respuesta a estado 0','Location','Best');
%     xlabel('t','FontWeight','bold','FontSize',16);
