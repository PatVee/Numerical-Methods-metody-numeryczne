function [result_nc_1, result_nc_2,result_nc_3,result_nc_4] = trzecie(start, en)

result_nc_1 =  zeros(1000, 1);
result_nc_2 =  zeros(1000, 1);
result_nc_3 =  zeros(1000, 1); 
result_nc_4 =  zeros(1000, 1);

for i=4:1000
        h = (en - start)/i;
        x= -1:h:1;
        f=11*x.^10;
        result_nc_1(i) =  zlozona(f, h, 1)-2;      
    
        result_nc_2(i) = zlozona(f, h, 2)-2;        

        result_nc_3(i) = zlozona(f, h, 3)-2;

        result_nc_4(i) = zlozona(f, h, 4)-2;
       
end

end

