function [] = SerieFourierExponencialDirac(t0, tf ,dn ,d0 ,armo ,a ,b, np)
% t0 el valor inicial para calcular la serie
% tf el valor final donde calcular la serie
% dn función de la fórmula de los dn
% f función original
% armo número de armonicos a utilizar en la gráfica
% a, b intevalo para realizar la grafica de la serie

    w0=2*pi/(tf-t0);
    sf=d0;
    t=a:0.0001:b;
    for n=1:armo
        sf=sf+dn(-n)*exp(w0*-n*t*1i)+dn(n)*exp(w0*n*t*1i);
    end
    
    figure (np)
    hFig = figure(np);
    set(hFig, 'Position', [0 0 900 900])
    subplot(3,1,1)
    plot(t,sf)
    grid on
    legend('Serie de Fourier','Location','Best')
    xlabel('t','FontWeight','bold','FontSize',16)
    
    nn=-armo:armo;
    absdn=zeros(1,length(nn));
    cont=1;
    for i =-armo:armo
        if i==0
            absdn(cont)=d0;
        end
         absdn(cont)=dn(i);
         cont=cont+1;
    end
    
    subplot(3,1,2)
    stem(w0*nn,abs(absdn))
    title('Espectro de magnitud D_n ','FontWeight','bold','FontSize',16)
    xlabel('\omega','FontWeight','bold','FontSize',16)
    grid on
    
    subplot(3,1,3)
    stem(w0*nn,angle(absdn))
    title('Espectro de fase, \angle de D_n ','FontWeight','bold','FontSize',16) % %
    xlabel('\omega','FontWeight','bold','FontSize',16)
    grid on
end

