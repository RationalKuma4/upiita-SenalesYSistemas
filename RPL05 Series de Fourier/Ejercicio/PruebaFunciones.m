t0=0;
tf=pi;
a0=0.504;
an=@(n) 0.504.*(2./(1+16.*n.^2));
bn=@(n) 0.504.*(8.*n./(1+16.*n.^2));
f=@(t) exp(-t./2);
armo=15;
a=-8;
b=9;
SerieFourierTrigonometrica(t0, tf, a0, an, bn, f, armo, a, b)

