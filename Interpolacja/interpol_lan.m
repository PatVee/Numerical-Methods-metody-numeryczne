x = -2:0.5:2;
y=(1+x.^4)./(1+x.^6);
xx = linspace(-2,2,1000);
yy = lagrange(xx,x,y);


bl=yy-xx;								
blm=max(abs(bl));

x1 = -2:0.01:2;
y1=(1+x1.^4)./(1+x1.^6);

plot(x1,y1,x,y,'o',xx,yy,'r.-')
grid on
title('interpolacja wielomianem Lagrange’a')
xlabel('zmienna x')
ylabel('zmienna y')
legend('poczatkowa funkjac','wezly interpolacji', 'zinterpolowane koordynaty')
