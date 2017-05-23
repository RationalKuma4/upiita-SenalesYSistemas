% t=-1:.01:2;
% t0=0;
% tf=pi;
% a0=0.504;
% an=@(n) 0.504.*(2./(1+16.*n.^2));
% bn=@(n) 0.504.*(8.*n./(1+16.*n.^2));
% f=@(t) exp(-t./2);
% armo=4;
% a=-8;
% b=9;
% SerieFourierTrigonometrica(t0, tf, a0, an, bn, f, armo, a, b, 1)
% plot(t, f(t));

% A = 6;
% t0=-0.5;
% tf=1.5;
% d0=0;
% %dn=@(n) ;
% bn=@(n) (8.*A./(n.*pi).^2).*sin((n.*pi)./2);
% % 
% f= @(t) A.*t.*(t>=-0.5 & t<0.5);
% f1= @(t) A.*(1-t).*(t>=0.5 & t<=1.5);
% fori = f(t) + f1(t);
% plot(t, f(t) + f1(t))
% 
% 
% grid on;
% armo=4;
% a=-8;
% b=9;
% 
% f = @(x) [2*sqrt(x).*(0<=x & x<1) + (3-x).*(1<=x & x<=3)];
% x = linspace(0,3);
% intvl = [-6 6];
% pfx = repmat(f(x),1,diff(intvl)/3);
% px = linspace(intvl(1),intvl(2),length(pfx));
% figure(1)
% plot(px, pfx)
% grid


% t=-1:.01:2;
% f= @(t) A.*t.*(t>=-0.5 & t<0.5) + A.*(1-t).*(t>=0.5 & t<=1.5);
% %f1= @(t) A.*(1-t).*(t>=0.5 & t<=1.5);
% %fori = f(t) + f1(t);
% plot(t, f(t))
% axis([-1 2 -4 4])
% grid on;

% t=-10:.01:10;
% f= @(t) 0.*(t>-pi & t<-pi./2) + 1.*(t>-pi./2 & t<pi./2) + 0.*(t>pi & t<pi./2);
% plot(t, f(t))
% axis([-5 5 -.5 2])
% grid on;

% x = -10 : 0.1 : 10;
% y = double(x == 0);
% plot(x, y);


% A = 3;
% d0=0;
% dn= @(n) -(4.*A)/(n.*pi).^2;
% t0=-0.5;
% tf=1.5;
% f= @(t) A.*t.*(t>=-0.5 & t<0.5) + A.*(1-t).*(t>=0.5 & t<=1.5);
% armo=4;
% a=-5;
% b=5;
% SerieFourierExponencial25(t0, tf, dn, d0, f, armo, a, b, 1)

% d0=0.5;
% dn= @(n) 1./(n.*pi);
% t0=-pi;
% tf=pi;
% f= @(t) 0.*(t>-pi & t<-pi./2) + 1.*(t>-pi./2 & t<pi./2) + 0.*(t>pi & t<pi./2);
% armo=4;
% a=-5;
% b=5;
% SerieFourierExponencial25(t0, tf, dn, d0, f, armo, a, b, 3);

% d0=0.504;
% dn= @(n) 0.504/(1+4*n*1i);
% t0=0;
% tf=pi;
% f=@(t) exp(-t./2);
% armo=4;
% a=-7;
% b=7;
% SerieFourierExponencial25(t0, tf, dn, d0, f, armo, a, b, 4);


% d0=1/3;
% dn= @(n) 1/3;
% t0=-4;
% tf=4;
% armo=4;
% a=-7;
% b=7;
% SerieFourierExponencialDirac(t0, tf ,dn ,d0 ,armo ,a ,b, 1)


% A = 3;
% d0=0;
% dn= @(n) (12i.*sin((n.*pi)/(2)))/(n.*pi).^2;
% t0=-0.5;
% tf=1.5;
% f= @(t) 2.*A.*t.*(t>=-0.5 & t<0.5) + 2.*A.*(1-t).*(t>=0.5 & t<=1.5);
% armo=4;
% a=-5;
% b=5;
% SerieFourierExponencial25(t0, tf, dn, d0, f, armo, a, b, 2);

A = 3;
d0=0;
dn= @(n) (12/(n.*pi).^2);
t0=-0.5;
tf=1.5;
f= @(t) 2.*A.*t.*(t>=-0.5 & t<0.5) + 2.*A.*(1-t).*(t>=0.5 & t<=1.5);
armo=4;
a=-5;
b=5;
SerieFourierExponencial25(t0, tf, dn, d0, f, armo, a, b, 1);


