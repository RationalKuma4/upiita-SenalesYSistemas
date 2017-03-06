function [ elipse ] = introduceElipse( )
%Pregunta las coordenadas de
%la elipse
%[c1 c2 a1 a2]
    elipse = zeros(1,4);
    disp('Itroduce las coordenadas de la elipse')
    elipse(1) = input('Centro, coordenada x = ');
    elipse(2) = input('Centro, coordenada y = ');
    elipse(3) = input('A lo largo del eje x = ');
    elipse(4) = input('A lo largo del eje y = ');
end

