clear all;
%%
clear;
clc
t0=1e-3;
x0=t0^2;
v0=2*t0;
[t1,xEU2, vEU2, errorE] = euler2(x0, v0, t0, t0, 10, 0.001);

[t2,xHE2, vHE2, errorH] = heun2(x0, v0, t0, t0, 10, 0.001);

[t3, xAd2, vAd2, errorA] = adamsa2(x0, v0, t0, t0, 10, 0.001);

t = linspace(0.001, 10, 10 / 0.001);
f = sin(t.^2);
fer= abs(2*t.*cos(t.^2));

subplot(3,2,1);
plot(t1, xEU2, 'mx')
hold on
plot(t, f, 'b-')
hold on
xlabel('X');
ylabel('Y');
title('Eulera')

subplot(3,2,2);
plot(t1,errorE, 'mx');
hold on
plot(t, fer, 'b-')
hold on
xlabel('X');
ylabel('Y');
title('Eulera')

subplot(3,2,3);
plot(t2, xHE2, 'mx')
hold on
plot(t, f, 'b-')
hold on
xlabel('X');
ylabel('Y');
title('Heuna')

subplot(3,2,4);
plot(t2,errorH, 'mo');
hold on
plot(t, fer, 'b-')
hold on
xlabel('X');
ylabel('Y');
title('Heuna')

subplot(3,2,5)
plot(t3, xAd2, 'mo')
hold on
plot(t, f, 'b-')
hold on
xlabel('X');
ylabel('Y');
title('Adamsa')

subplot(3,2,6);
plot(t3,errorA, 'mo');
hold on
plot(t, fer, 'b-')
hold on
xlabel('X');
ylabel('Y');
title('Adamsa')
legend('Rozwiazanie metoda Eulera,Heuna,Adamsa', 'Rozwiazanie analityczne')
grid on
figure();

%%
%%
clear;

t0=1e-3;
x0=t0^2;
v0=2*t0;
[t1,xEU2, vEU2, errorE] = euler2(x0, v0, t0, t0, 10, 0.00001);

[t2,xHE2, vHE2, errorH] = heun2(x0, v0, t0, t0, 10, 0.00001);

[t3, xAd2, vAd2, errorA] = adamsa2(x0, v0, t0, t0, 10, 0.00001);

t = linspace(0.00001, 10, 10 / 0.00001);
f = sin(t.^2);
fer= abs(2*t.*cos(t.^2));

subplot(3,2,1);
plot(t1, xEU2, 'mx')
hold on
plot(t, f, 'b-')
hold on
xlabel('X');
ylabel('Y');
title('Eulera')

subplot(3,2,2);
plot(t1,errorE, 'mx');
hold on
plot(t, fer, 'b-')
hold on
xlabel('X');
ylabel('Y');
title('Eulera')

subplot(3,2,3);
plot(t2, xHE2, 'mx')
hold on
plot(t, f, 'b-')
hold on
xlabel('X');
ylabel('Y');
title('Heuna')

subplot(3,2,4);
plot(t2,errorH, 'mo');
hold on
plot(t, fer, 'b-')
hold on
xlabel('X');
ylabel('Y');
title('Heuna')

subplot(3,2,5)
plot(t3, xAd2, 'mo')
hold on
plot(t, f, 'b-')
hold on
xlabel('X');
ylabel('Y');
title('Adamsa')

subplot(3,2,6);
plot(t3,errorA, 'mo');
hold on
plot(t, fer, 'b-')
hold on
xlabel('X');
ylabel('Y');
title('Adamsa')
grid on
legend('Rozwiazanie metoda Eulera,Heuna,Adamsa', 'Rozwiazanie analityczne')
