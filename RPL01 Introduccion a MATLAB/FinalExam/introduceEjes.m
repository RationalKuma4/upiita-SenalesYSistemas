function [ ejes ] = introduceEjes( )
%Pregunta los ejes de la grafica del usuario
%Estan en la forma 
%[minX maxX minY maxY]
    ejes = zeros(1,4);
    disp('Introducir los ejes a utlizar')
    ejes(1) = input('Min X = ');
    ejes(2) = input('Max X = ');
    ejes(3) = input('Min Y = ');
    ejes(4) = input('Max Y = ');
end

