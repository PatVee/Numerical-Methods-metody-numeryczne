function wynik=NewtonaCotesa(f,h)
    dlugosc=length(f);
    if dlugosc==1
        wynik=h*f(1); 
    elseif dlugosc==2
         wynik=sum(h/2*f);
    elseif dlugosc==3
        wynik=h/3*(f(1)+4*f(2)+f(3));
    elseif dlugosc==4
        wynik=(3*h)/8*(f(1)+3*f(2)+3*f(3)+f(4));
    elseif dlugosc==5
        wynik=(2*h)/45*(7*f(1)+32*f(2)+12*f(3)+32*f(4)+7*f(5));
    else 
        wynik=NaN;
    end    
end

