function [] = Laplace2016aV2(a, b, ciy, cix, xi, t0)
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
    
    edi=subs(edi,X(s), laplace(xi));
    condicionEstadoCero = edi;
    
    edd=collect(edd,Y(s));
    edd=subs(edd,Y(s),Yy);


    disp('Funcion de tranferencia');
    syms entrada salida;
    entrada=0;
    salida=0;
    
    for i=1:tam(2)
       salida=salida+a(i)*s^(i-1)*Y(s);
       for k=1:i-1
           salida=salida-a(i)*(s^(i-1-k)*0);
       end
    end

    for i=1:tami(2)
       entrada=entrada+b(i)*s^(i-1)*X(s);
       for k=1:i-1
           entrada=entrada-b(i)*(s^(i-1-k)*0);
       end
    end
    
    salida=subs(salida,Y(s),1);
    entrada=subs(entrada,X(s),1);
    funcionTransferencia = entrada./salida;
    pretty(funcionTransferencia);
    
    disp('Respuesta al impulso');
    respuestaImpulso=ilaplace(funcionTransferencia);
    pretty(respuestaImpulso);
    subplot(3,2,1);
    fplot(respuestaImpulso, [0,t0],'b','LineWidth',2);
    grid on;
    title('Respuesta al impulso')
    xlabel('t','FontWeight','bold','FontSize',16);
    
    disp('Respuesta a entrada cero')
    condicionEntradaCero=edd==0;
    ecuacionEntradaCero = solve(condicionEntradaCero, Yy);
    parcialEntradaCero = partfrac(ecuacionEntradaCero);
    entradaCero=ilaplace(parcialEntradaCero);
    pretty(entradaCero);
    subplot(3,2,2);
    fplot(entradaCero, [0,t0],'b','LineWidth',2);
    grid on;
    title('Respuesta a entrada cero')
    xlabel('t','FontWeight','bold','FontSize',16);
    
    disp('Respuesta a estado cero');
    ecuacionEstadoCero = condicionEstadoCero.*(1./salida);
    parcialEstadoCero = partfrac(ecuacionEstadoCero);
    estadoCero = ilaplace(parcialEstadoCero);
    pretty(estadoCero);
    subplot(3,2,3);
    fplot(estadoCero, [0,t0],'b','LineWidth',2);
    grid on;
    title('Respuesta a estado cero')
    xlabel('t','FontWeight','bold','FontSize',16);
    
    disp('Respuesta total');
    respuestaTotal = entradaCero + estadoCero;
    pretty(respuestaTotal);
    subplot(3,2,4);
    fplot(respuestaTotal, [0,t0],'b','LineWidth',2);
    grid on;
    title('Respuesta total')
    xlabel('t','FontWeight','bold','FontSize',16);
    
    disp('Respuesta total al escalón con condiciones iniciales 0');
    ecuacionRespuestaEscalon = funcionTransferencia.*(1./s);
    parcialRespuestaEscalon = partfrac(ecuacionRespuestaEscalon);
    respuestaEscalon = ilaplace(parcialRespuestaEscalon);
    pretty(respuestaEscalon);
    subplot(3,2,5);
    fplot(respuestaEscalon, [0,t0],'b','LineWidth',2);
    grid on;
    title('Respuesta total al escalón con condiciones iniciales 0')
    xlabel('t','FontWeight','bold','FontSize',16);
    
    eq1=edd==edi;
    edd=solve(eq1, Yy);
    y(t)=ilaplace(edd);
    pretty(y(t));
end


