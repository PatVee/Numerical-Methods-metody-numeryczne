dane = importdata('dane_selectionsort.mat');

x = dane(:,1);
y = dane(:,2);

 
A = [length(x), sum(x), sum(x.^2);
      sum(x), sum(x.*x), sum(x.*x.^2);
      sum(x.^2),sum(x.^2.*x), sum(x.^2.*x.^2)];
  
B = [ sum(y);
      sum(y.*x);
      sum(y.*x.^2)];
  
a=A\B;



xx = linspace(0,max(x)+1, 10);
yy = a(1) + a(2).*xx + a(3).*xx.^2;
err= immse(x,y);
plot (x,y,'ro',xx,yy,'g-')

grid on;
legend('Punkty pomiarowe', 'Aproksymacja sredniokwadratowa');
xlabel('N[x]')
ylabel('T[s]')
title('Wykorzystanie aproksymacji sredniokwadratowej w postaci a*x^2+b*x+c');
