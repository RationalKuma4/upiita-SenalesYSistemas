sympref('HeavisideAtOrigin', 1);
syms t
% Laplace2016aV2([6 5 1],[1 1],[2,-1],[0],2.*exp(-t),10)
% Laplace2016a([10 7 1],[1],[0,0],[0],heaviside(t),10)
% Laplace2016aV2([2 2 1 1],[2 -1 3],[2 3 1],[0 1],exp(-t)*cos(t)*heaviside(t),10)

% Laplace2016aV2([1 2 1], [1], [1 2], [0], heaviside(t), 10)
% Laplace2016aV2([6 5 1], [1 1], [2 -1], [0 0], 2.*exp(-t).*heaviside(t), 5)

% Laplace2016aV2([6 5 1], [1 1], [2 -1], [0 0], 2.*exp(-t).*heaviside(t), 5)

% Laplace2016aV2([10 7 1], [3 2], [0 0 0], [0 0], 3.*exp(-3.*t).*heaviside(t), 5)

% Laplace2016aV2([1 2 1], [1], [1 2], [0], heaviside(t), 5)

% Laplace2016aV2([2 2 1 1],[2 -1 3],[2 3 1],[0 1],exp(-t)*cos(t)*heaviside(t),10)



% syms edd s ed edos
% edd = (s+4)/(s+1).^2;
% 
% edos = 1/(s.*(s+1).^2);
% pretty(edos);
% 
% ed = partfrac(edd);
% disp(ed);
% pretty(ed);
% 
% redos = partfrac(edos);
% disp(redos);
% pretty(redos);
% 
% 
% disp('Inversa de ecuaciones')
% disp(ilaplace(edd));
% disp(ilaplace(redos));

% t=-10:0.01:10;
% fuc = @(t) heaviside(t).* 2.*exp(-t);
% plot(t, fuc(t))