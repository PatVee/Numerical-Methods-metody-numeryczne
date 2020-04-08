dane = importdata('dane_resistor.mat');

x = dane(:,1);
y = dane(:,2);

 
A = [length(x), sum(x);
      sum(x), sum(x.*x);
     ];
  
B = [ sum(y);
      sum(y.*x);
    ];
  
a=A\B;


R=x./y;
mR=mean(R);
xx = linspace(0,max(x)+1, 10);
yy = a(1) + a(2).*xx;
err= immse(x,y);
plot (x,y,'ro',xx,yy,'g-')

grid on;
legend('Punkty pomiarowe', 'Aproksymacja sredniokwadratowa');
xlabel('napiecie[V]')
ylabel('prad[A]')
title('Wykorzystanie aproksymacji sredniokwadratowej w postaci a*x+b');
