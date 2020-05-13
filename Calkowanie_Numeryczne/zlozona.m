function wynik = zlozona(f,h,d)
wynik = 0;
i = 1;  
x = 0;
if d==4
    for i=i+4:4:length(f)
        wynik = wynik +(2*h/45)*(7 * f(i - 4) + 32 * f(i - 3) + 12 * f(i - 2) + 32 * f(i - 1)+ 7 * f(i));
    end
    x = length(f) - i ;
end  

if d==3 || x==3    
    for i=i+3:3:length(f)
        wynik = wynik +(3*h/8)*( f(i - 3) + 3*f(i - 2) + 3*f(i - 1) + f(i) );
    end
    x = length(f) - i;
end

if d==2 || x==2
    for i=i+2:2:length(f)
        wynik = wynik +(h/3)*( f(i - 2) + 4*f(i - 1) + f(i) );
    end

    x = length(f) - i;
end

if d==1 || x==1   
    for i=i+1:1:length(f)
        wynik = wynik +(h/2)*(f(i - 1) + f(i) );
    end
    x = length(f) - i;
end

if d < 1 || d >4
    wynik = NaN;

end
