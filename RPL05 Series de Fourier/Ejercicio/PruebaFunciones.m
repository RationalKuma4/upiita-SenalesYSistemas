t=-1:.01:2;

% t0=0;
% tf=pi;
% a0=0.504;
% an=@(n) 0.504.*(2./(1+16.*n.^2));
% bn=@(n) 0.504.*(8.*n./(1+16.*n.^2));
% f=@(t) exp(-t./2);
% armo=15;
% a=-8;
% b=9;
% SerieFourierTrigonometrica(t0, tf, a0, an, bn, f, armo, a, b)
% plot(t, f(t));

A = 6;
t0=-0.5;
tf=1.5;
d0=0;
dn=@(n) ;
bn=@(n) (8.*A./(n.*pi).^2).*sin((n.*pi)./2);
f=@(t) A.*t.*(t>=-0.5 & t<0.5);
f1=@(t) A.*(1-t).*(t>=0.5 & t<=1.5);
fOri = f + f1;


grid on;
armo=4;
a=-8;
b=9;
% 
% f = @(x) [2*sqrt(x).*(0<=x & x<1) + (3-x).*(1<=x & x<=3)];
% x = linspace(0,3);
% intvl = [-6 6];
% pfx = repmat(f(x),1,diff(intvl)/3);
% px = linspace(intvl(1),intvl(2),length(pfx));
% figure(1)
% plot(px, pfx)
% grid