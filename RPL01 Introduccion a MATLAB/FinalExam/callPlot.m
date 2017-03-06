% Program definition:

% main:
% choice:
% 1- explain the program
% 2- define the bounds of the plot
% 3- draw the ellipse defined by the user
% 4- load a file containing the ellipses and plot them
% 5- ask for the plot's precision, by default 200 points
% 6- clean the figure
% 7- exit

clear all;
close all;

Npoints = 200;
figure(1)
hold on

choice = 1;
while choice ~= 7

  switch choice
    case 1
      explainProgram;
    case 2
      myAxes = askAxes;
      modifyAxes (myAxes);
    case 3
      ellipse = askEllipse;
      plotEllipse(ellipse, Npoints);
    case 4
      loadFileAndPlot(Npoints);
    case 5
      Npoints = askPrecision;
    case 6
      clf
  end     
  choice = menu('Make your choice', 'explain', ...
    'change axes', 'draw an ellipse', ...
    'draw the ellipses from a file', ...
    'change the precision','clean the figure', ...
    'exit the program');  
end   


