clc;
clear;
f = @(x)1.1 * x ^ 2 + 0.765 * x - 3.55 * x ^ 3 - 0.74;
a = 1;
b = - 1;
x0 = - 1 / 300;
[result_N, iN, errornN] = mynewton(x0, 10 ^ -8);
[result_B, iB, errornB] = bisekcja(f, a, b, 10 ^ -8);

xx = linspace(- 1, 1, 1000);
yy = 1.1 * xx .^ 2 + 0.765 * xx - 3.55 * xx .^ 3 - 0.74;

plot(xx, yy, 'b');
hold on;
plot(result_N, 0, 'r.-');
hold on;
plot(result_B, 0, 'o');
grid on;

title('Rozwiazania rownania nieliniowego 1,1x^2+0,765x=3,55x^3+0.74');
xlabel('zmienna x');
ylabel('zmienna y');
legend('Wykres funkcji', 'Newtona-Raphsona', 'Bisekcja');

figure;
iteracjiN = 1:1:iN;
semilogy(iteracjiN, errornN, 'r*');
hold on;
iteracjiB = 1:1:iB;
semilogy(iteracjiB, errornB, 'b+');
grid on;

title('Wykres bledow w skali logarytmicznej obydwu metod');
xlabel('ilosc iteracji');
ylabel('Blad bezwzgledny');
legend('Metoda Newtona-Raphsona', 'Metoda Bisekcji');

