function [ ] = dibujaElipseArchivo( nPuntos )
%Carga un archivo con coordenadas para dibujar elipses
    elipses = load('cheeseEllipse.txt');
    
    for elipse = elipses'
        dibujaElipse(elipse, nPuntos);
    end
end

