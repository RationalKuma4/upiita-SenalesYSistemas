function [ myAxes ] = askAxes( )
%Pregunta los ejes de la grafica del usuario
%Estan en la forma 
%[minX maxX minY maxY]
    myAxes = zeros(1,4);
    disp('Introducir los ejes a utlizar')
    myAxes(1) = input('Min X = ');
    myAxes(2) = input('Max X = ');
    myAxes(3) = input('Min Y = ');
    myAxes(4) = input('Max Y = ');
end

