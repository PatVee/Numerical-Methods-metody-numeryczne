%
f0=[11];
f1=[0 11];
f2=[0 0.0107 11];
f3=[0 0.000185 0.1907 11];
f4=[0 0.00001 0.0107 0.61945 11];
f5=[11 0.0107421875 0 0.0107421875 11];


w0 = NewtonaCotesa(f0,0.5);
w1 = NewtonaCotesa(f1,1);
w2 = NewtonaCotesa(f2,0.5);
w3 = NewtonaCotesa(f3,0.333);
w4 = NewtonaCotesa(f4,0.25);
w5 = NewtonaCotesa(f5,0.5);


x=linspace(-1, 1, 201);
f=11*x.^10;
r1 = zlozona(f,0.01,1);
r2 = zlozona(f,0.01,2);
r3 = zlozona(f,0.01,3);
r4 = zlozona(f,0.01,4);

[result_nc_1,result_nc_2,result_nc_3,result_nc_4] = trzecie(-1, 1);



loglog([1:1000], abs(result_nc_1))
hold on
loglog([1:1000], abs(result_nc_2))
hold on
loglog([1:1000], abs(result_nc_3))
hold on
loglog([1:1000], abs(result_nc_4))
hold on
xlabel('Liczba przedzialow');
ylabel('Blad bezwzgledny');
grid on
title('Wykres bledu metody Newtona-Cotesa,dla roznego kroku calkowania');
legend('Metoda rzedu I','Metoda rzedu II','Metoda rzedu III','Metoda rzedu IV');

