clc;

% Ejemplos graficas
% f = inline('exp(-t).*t+exp(-t).*cos(2*t)','t');
% u = inline('t>=0', 't');
% g = @(t)exp(-t).*t+exp(-t).*cos(2*t);
% k=2;
% h = @(k)2.^k;
% p=h(k);
% t1= -10:5; % El punto y coma es para que el resultado no sea desplegado
% t2=-2:0.01:15;
% 
% plot([1,3],[5,-4])
% 
% figure
% plot(t1, sinc(t1))
% 
% figure
% plot(t2, sinc(t2))
% 
% figure
% t4=-100:0.1:100;
% plot(t4,t4.^3,'LineWidth',2)
% grid on
% ax = gca;
% ax.XAxisLocation = 'origin';
% ax.YAxisLocation = 'origin';
% ax.Box = 'on';
% title('Gráfica de la señal f(t)=t^3 ')
% 
% figure
% t3=-100:0.1:100;
% plot3(t3,cos(t3),sin(t3),'LineWidth',2)
% grid on
% xlabel('Dominio t')
% ylabel('Re')
% zlabel('Im')
% title('Gráfica de la señal f(t)=e^{tj} ')

p = @(t)(t>=0 & t<1);

% figure
% subplot(2,3,1)
% plot(0:0.01:5,f(0:0.01:5))
% 
% subplot(2,3,2)
% plot(t1,u(t1))
% 
% subplot(2,3,5)
% plot(t2,p(t2))
% 
% figure()
% plot(t2,u(t2))
% 
% figure()
% plot(t1,p(t1))
% grid on
% axis([-12 10, -1, 2])
% 
% figure()
% subplot(1,2,1)
% plot(t1,p(t1))
% grid on
% axis([-12 10, -1, 2])
% 
% subplot(1,2,2)
% plot(t2,p(t2))
% grid on
% axis([-12 10, -1, 2])

% t=-10:0.001:10;
% figure
% subplot(2,1,1)
% plot(t,p(t))
% grid on
% axis([-10, 10 -0.5 1.5])
% 
% subplot(2,1,2)
% plot(t,p(t-2))
% grid on
% axis([-10, 10 -0.5 1.5])

syms a b x
Q=int(x*exp(-x),a,b)
subs(Q,{a,b},{0,2})
subs(Q,{a,b},{0,inf})
Q=int(x*exp(-x),a,inf)
subs(Q,a,0)
