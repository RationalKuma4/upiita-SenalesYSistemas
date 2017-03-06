%Decripcion del programa
%
%1. Explicar el programa
%2. Definir los limites de la grafica
%3. Dibujar una elipse elegida por el usuario
%4. Cargar un archivo con elipses y dibujarlas
%5. Preguntar por la resolucion de la grafica
%6. Limpiar la figura
%7. Salir
%
%Instrucciones
%Organiza tu programa en script principal y diferenetes funciones
%Usa funciones alamcenadas en archivos .m
%Documenta tus funciones y tu programa principal

clear all;
close all;

opcion = 1;

while opcion ~= 7
    switch opcion
        case 1
            explicaPrograma;
        case 2
            ejes = introduceEjes;
            cambiaEjes(ejes);
        case 3
            elipse = introduceElipse;
            dibujaElipse(elipse, nPuntos);
        case 4
            dibujaElipseArchivo(nPuntos);
        case 5
            nPuntos = introducePresicion;
            cambiaEscala;
        case 6
            clf
        case 7
    end    
    opcion = menu('Elige una opcion', 'Explica', 'Cambia los ejes', ...
        'Dibuja una elipse', 'Dibuja elipses del archivo',...
        'Cambia la escala', 'Limpia la figura', 'Salir');
end



