function [ ellipse ] = askEllipse(  )
%Pregunta las coordenadas de
%la elipse
%[c1 c2 a1 a2]
    ellipse = zeros(1,4);
    disp('Itroduce las coordenadas de la elipse')
    ellipse(1) = input('Centro, coordenada x = ');
    ellipse(2) = input('Centro, coordenada y = ');
    ellipse(3) = input('A lo largo del eje x = ');
    ellipse(4) = input('A lo largo del eje y = ');
end

