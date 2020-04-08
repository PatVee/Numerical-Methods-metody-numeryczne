   clear;
   load("tricky_Ab.mat")
   [L,U,x] = LU(A,b);
   res = norm(A*x-b);
   err = norm(A-L*U);