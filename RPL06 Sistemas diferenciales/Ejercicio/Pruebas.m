sympref('HeavisideAtOrigin', 1);
syms t
Laplace2016a([6 5 1],[1 1],[2,-1],[0],2.*exp(-t),10)
% Laplace2016a([10 7 1],[1],[0,0],[0],heaviside(t),10)
% Laplace2016a([2 2 1 1],[2 -1 3],[2 3 1],[0 1],exp(-t)*cos(t)*heaviside(t),10)
