
a = @(t) 0.*(t<=6);
b = @(t) ((t/6)-2).*(6<=t & t<=15);
c = @(t) ((-t/18)+4/3).*(15<t & t<24);

figure
t = (-5:.01:30);
plot(t, (a(t)+b(t)+c(t)))
axis([-5 30 -2 1])
xlabel('t->')
ylabel('x(t)')
title('Original')
grid;

figure
t = (-30:.01:0);
plot(t, (a(-1*t)+b(-1*t)+c(-1*t)))
axis([-30 0 -2 1])
xlabel('t->')
ylabel('x(-t)')
title('a')
grid;

figure
t = (-5:.01:25);
plot(t, (a(t+6)+b(t+6)+c(t+6)))
axis([-5 20 -2 1])
xlabel('t->')
ylabel('x(t+6)')
title('b')
grid;

figure
t = (0:.01:20);
plot(t, (a(3*t)+b(3*t)+c(3*t)))
axis([0 10 -2 1])
xlabel('t->')
ylabel('x(3t)')
title('c')
grid;

figure
t = (0:.01:50);
plot(t, (a(t/2)+b(t/2)+c(t/2)))
axis([0 50 -2 1])
xlabel('t->')
ylabel('x(t/2)')
title('d')
grid;
