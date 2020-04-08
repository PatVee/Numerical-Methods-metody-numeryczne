%dekompozycja macierzy LU
function[L, U, x] = LU(A, b)
[m] = size(b);
[m, n] = size(A);
L = zeros(m, m);
U = zeros(m, m);
for i = 1:m
    %Znajdujemy doln? tr?jk?tn? matryc?
    for k = 1:i - 1
        L(i, k) = A(i, k);
        for j = 1:k - 1
            L(i, k) = L(i, k) - L(i, j) * U(j, k);
        end
        L(i, k) = L(i, k) / U(k, k);
    end
    %Znajdujemy g?rn? tr?jk?tn? matryc?
    for k = i:m
        U(i, k) = A(i, k);
        for j = 1:i - 1
            U(i, k) = U(i, k) - L(i, j) * U(j, k);
        end
    end
end
%wzielismy pod uwag? jedynki na przek?tnej
for i = 1:m
    L(i, i) = 1;
end
y = zeros(m, 1);
y(1) = b(1) / L(1, 1);
for i = 2:m
    y(i) = b(i);
    for k = 1:i - 1
        y(i) = y(i) - L(i, k) * y(k);
    end;
end;
%konwertacja nast?puj?ce „Ux = y”
x = zeros(m, 1);
x(m) = y(m) / U(m, m);
for i = m - 1:(- 1):1
    x(i) = y(i);
    for k = i + 1:m
        x(i) = x(i) - U(i, k) * x(k);
    end;
    x(i) - x(i) / U(i, i);
end;