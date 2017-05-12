t = -1:.001:15;
f = @(t) (t>=0)-2.*(t>3)+(t>4);
plot(t, f(t));
axis([-1 5 -3 3]);
grid;


% f = @(t) (t>=0 & t<2);
% g = @(t) (t>=0 & t<0.25);

% figure
% plot(t, f(t));
% axis([-4 4 -2 2]);
% grid;

% figure
% plot(t, g(-t))
% axis([-1 1 -1.5 1.5]);
% grid;

% t = -5:.01:15;
% k = @(t) (t>=0)-2.*(t>2)+(t>4);
% figure
% plot(t, k(t))
% axis([-1 15 -2 2]);
% grid;

% k1 = @(t) (-t>=0)-2.*(-t>2)+(-t>4);
% figure
% plot(t, k1(t))
% axis([-5 1 -2 2]);
% grid;
%
% f = @(t) (exp(-t)).*(t>=0 & t<=1);
% figure
% plot(t, f(t));
% axis([-1 2 -0.5 1.5]);
% grid;
% 
% g = @(t) (t).*(t>=-1 & t<=1);
% figure
% plot(t, g(t));
% axis([-2 2 -2 2]);
% grid;

