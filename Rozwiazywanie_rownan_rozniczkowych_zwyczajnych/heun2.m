function [t, x, v, error] = heun2(x0, v0, t0, start, endd, h)
t = start:h:endd;
v = zeros(1, length(t));
v(1) = v0;
x = zeros(1, length(t));
x(1) = x0;

fx = @(t, x, v, error) (v);
fv = @(t, x, v, error) (v/t - 4*t^2*x);
error = max(abs(x-v));

    for i = 2:length(t)
        vhe = v(i - 1) + h * fv(t(i - 1), x(i - 1), v(i - 1));
        xhe = x(i - 1) + h * fx(t(i - 1), x(i - 1), v(i - 1));
        v(i) = v(i - 1) + h / 2 * (fv(t(i - 1), x(i - 1), v(i - 1)) + fv(t(i), xhe, vhe));
        x(i) = x(i - 1) + h / 2 * (fx(t(i - 1), x(i - 1), v(i - 1)) + fx(t(i), xhe, vhe));
        error = [error, abs(x(i)-v(i))];
    end
end

