function [] = SerieFourierTrigonometrica(t0, tf ,a0 ,an ,bn, f, armo, a, b, np)
% t0 el valor inicial para calcular la serie
% tf el valor final donde calcular la serie
% a0 coeficiente de a0
% an funcion de an
% bn funcion de bn
% f funcion original
% armo número de armonicos a utilizar en la gráfica
% a, b intevalo para realizar la grafica de la serie
    w0=2*pi/(tf-t0);
    sft=a0;
    t=a:0.0001:b;
    
    for n=1:armo
        sft=sft+an(n).*cos(n.*w0.*t)+bn(n).*sin(n.*w0.*t);
    end
    
    figure (np)
    hFig = figure(np);
    set(hFig, 'Position', [0 0 900 900])
    subplot(4,2,1)
    plot(t,sft)
    grid on
    legend('Serie de Fourier','Location','Best')
    xlabel('t','FontWeight','bold','FontSize',16)
    
    sft=a0;
    t1=t0:0.0001:tf;
    
    for n=1:armo
        sft=sft+an(n).*cos(n.*w0.*t1)+bn(n).*sin(n.*w0.*t1);
    end
    subplot(4,2,2)
    plot(t1,f(t1),'r')
    grid on
    hold on
    plot(t1,sft)
    legend('Función original','Serie de Fourier ','Location','Best')
    xlabel('t','FontWeight','bold','FontSize',16)
    axis auto
    
    subplot(4,2,4)
    e=f(t1)-sft;
    plot(t1,e)
    title('Error','FontWeight','bold','FontSize',16)
    xlabel('t','FontWeight','bold','FontSize',16)
    axis auto
    grid on
    
    subplot(4,2,6)
    e=f(t1)-sft;
    area(t1,e.^2)
    legend('Energia del error','Location','Best')
    xlabel('t','FontWeight','bold','FontSize',16)
    axis auto
    grid on
    
    nn=0:armo;
    wan=zeros(1,length(nn));
    wbn=zeros(1,length(nn));
    angulos=zeros(1,length(nn));
    cont=1;
    for i =0:armo
        if i==0
            wan(cont)=a0;
            wbn(cont)=a0;
        else
            wan(cont)=an(i);
            wbn(cont)=bn(i);
            angulos(cont)=-atan(4.*i);
        end
        cont=cont+1;
    end
     
    subplot(4,2,3)
    stem(w0*nn,wan)
    title('an','FontWeight','bold','FontSize',16)
    xlabel('\omega','FontWeight','bold','FontSize',16)
    grid on
    
    subplot(4,2,5) 
    stem(w0*nn,wbn) 
    title('bn','FontWeight','bold','FontSize',16) 
    xlabel('\omega','FontWeight','bold','FontSize',16)
    grid on
    
    subplot(4,2,7) 
    stem(w0*nn, angulos) 
    title('bn angulo','FontWeight','bold','FontSize',16) 
    xlabel('\omega','FontWeight','bold','FontSize',16)
    grid on
end

