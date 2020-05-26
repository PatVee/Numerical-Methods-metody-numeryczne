function [t, x, v, error] = adamsa2(x0, v0, t0, start0, end0,h)
t = start0:h:end0;

v = zeros(size(t));
x = zeros(size(t));
n = numel(v);

x(1) = x0 + h * (v0);
v(1) = v0 + h * (- x0);
%x(1) = x0 + h * (v0);
%v(1) = v0 + h * (v0./t - 4*t.^2.*x);

error = max(abs(x-v));
    for i = 2 : n
        if i == 2
            fx1 = v(i - 1);
            fv1 = - x(i - 1);

            fx0 = v0;
            fv0 = - x0;

            v(i) = v(i - 1) + h / 2 * (3 * fv0 - fv1);
            x(i) = x(i - 1) + h / 2 * (3 * fx0 - fx1);
        else
            fx1 = v(i - 1);
            fv1 = - x(i - 1);

            fx0 = v(i - 2);
            fv0 = - x(i - 2);
            v(i) = v(i - 1) + h / 2 * (3 * fv0 - fv1);
            x(i) = x(i - 1) + h / 2 * (3 * fx0 - fx1);
        end
        error = [error, abs(x(i)-v(i))];
    end
end

