function [ ] = plotEllipse( ellipse, Npoints )
%Grafica una elipse con Npoint punto definido por
%la elipse (x-c1).^2/a1^+(y-c2).^2/a2 <= 1 donde
%los parametros estan dados como [c1 c2 a1 a2]
%color es un string para el comando plot
    c1 = ellipse(1);
    c2 = ellipse(2);
    a1 = ellipse(3);
    a2 = ellipse(4);
    
    %Parametro de la elipse
    t = linspace(0, 2*pi, Npoints);
     
    %Parametrisacion de la elipse
    plot(c1 + a1*sin(t), c2 + a2*cos(t));
end

