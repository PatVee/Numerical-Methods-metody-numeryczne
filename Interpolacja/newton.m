function y=newton(x,pointx,pointy)
N=length(pointx);
    for i=1:N
        f(i,1)=pointy(i);
    end
    for j=2:N
        for i=1:N-j+1
            f(i,j)=(f(i+1,j-1)-f(i,j-1))/(pointx(i+j-1)-pointx(i));
        end
    end
s=pointy(1);
    for j=2:N
        r=1;
        for i=1:j-1
            r=r.*(x-pointx(i));
        end
        s=f(1,j)*r+s;
    end
y=s;
end