A=[
  3, -1, 0, 0, 0, 0;
 -1, 3, -1, 0, 0, 0; 
 0, -1, 3, -1, 0, 0;
 0, 0, -1, 3, -1, 0;
 0, 0, 0, -1, 3, -1;
  0, 0, 0, 0, -1, 3
  ];

b=[ 2;
    1;
    1;
    1;
    1;
    2
  ];

eps=10^(-3);
N=100;

x=A\b

J = Jacobi(A,b,eps,N);
if(J != -1)
  fprintf('J Solutia este:\n')
  disp(J)
else
  disp('Numarul de iteratii off the chart')
end

G = Gauss_Seidel(A,b,eps,N);
if(G != -1)
  fprintf('GS Solutia este:\n')
  disp(G)
else
  disp('Numarul de iteratii off the chart')
end

w = 1.1
R = Relax(A,b,eps,N,w);
if(R != -1)
  fprintf('R Solutia este:\n')
  disp(R)
else
  disp('Numarul de iteratii off the chart')
end