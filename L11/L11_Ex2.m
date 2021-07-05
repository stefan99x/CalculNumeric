A = [
     3,1,1;
    -2,4,0;
    -1,2,-6
    ];
    
b = [
     12;
      2;
     -5
    ];

w = 1.1;
 
eps=10^(-5);
N = 20;

x = A\b

j = Jacobi(A,b,eps,N)
g = Gauss_Seidel(A,b,eps,N)
r = Relax(A,b,eps,N,w)