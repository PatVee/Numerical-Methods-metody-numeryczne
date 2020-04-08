function y = lagrange(x,pointx,pointy)
N = length(pointx);
y = zeros(size(x));
    for i = 1:N
           P = ones(size(x));
          for j = 1:N
             if i~=j
                P = P.*(x-pointx(j))./(pointx(i)-pointx(j));
             end
          end
          y = y + pointy(i) * P;
    end
end