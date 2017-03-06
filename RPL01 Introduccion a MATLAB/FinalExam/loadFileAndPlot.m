function [ ] = loadFileAndPlot( Npoints )
%Carga un archivo con coordenadas para dibujar elipses
    AllEllipses = load('cheeseEllipse.txt');
    for ellipse = AllEllipses'
        dibujaElipse(ellipse, Npoints);
    end
end

