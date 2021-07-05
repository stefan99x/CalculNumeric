function J = Jacobi(A,b,eps,N)
  [m,n]=size(A);
  
  xJ_old=zeros(m,1);
  xJ_new=xJ_old;
  nr_it=0;
  while nr_it<=N
    
    for i=1:m
      aux_suma = A(i,:)*xJ_old;
      xJ_new(i) = 1/A(i,i)*(b(i)-aux_suma+A(i,i)*xJ_old(i)); 
    end
    
    if abs(xJ_new-xJ_old)<eps
      J = xJ_new;
      nr_it
      return
    end
   
    xJ_old=xJ_new;
    nr_it=nr_it+1;
  end  
  J = -1;
endfunction