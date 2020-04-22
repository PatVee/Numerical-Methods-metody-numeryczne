function [result_N, i, error] = mynewton(x0, e)
i = 1;
f = @(x) - 3.55 * x ^ 3 + 1.1 * x ^ 2 + 0.765 * x - 0.74;
df = @(x) - 10.65 * x ^ 2 + 2.2 * x + 0.765;
x1 = 0;
error = abs(f(x0));

while 1
    x1 = x0 - f(x0) / df(x0);
    error = [error, abs(f(x1))];
    i = i + 1;
    result_N = x1;
 
    if abs(f(x1) - f(x0)) < e
        return;
    end
    if abs(f(x1)) < e
        return;
    end
    if (i >= 10000)
        print('przekroczona maks liczba krokow')
        return;
    end
    x0 = x1;
end
end

