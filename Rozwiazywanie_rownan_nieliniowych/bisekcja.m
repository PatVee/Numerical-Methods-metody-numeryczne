function [c, i, error] = bisekcja(f, a, b, e)
i = 0;
error = [];
c = 0;
while abs(f(c)) > e
    i = i + 1;
    c = (a + b) / 2;
    if ((f(c) * f(a)) < 0)
        b = c;
    elseif ((f(c) * f(b)) < 0)
        a = c;
    end
    error = [error, abs(f(c))];
    if (i >= 10000)
        print('przekroczona maks liczba krokow')
        return
    end
end
