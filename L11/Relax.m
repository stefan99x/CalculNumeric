function R = Relax(A,b,eps,N,w)
  [m,n]=size(A);
  
  xJ_old=zeros(m,1);
  xJ_new=xJ_old;
  nr_it=0;
  while nr_it<=N
    
    for i=1:m
      aux_suma = A(i,1:i-1)*xJ_new(1:i-1);
      aux_suma_2 = A(i,i+1:end)*xJ_old(i+1:end);
      xJ_new(i) = w/A(i,i)*(b(i)-aux_suma-aux_suma_2) + (1-w)*xJ_old(i); 
    end
    
    if abs(xJ_new-xJ_old)<eps
      R = xJ_new;
      nr_it
      return
    end
   
    xJ_old=xJ_new;
    nr_it=nr_it+1;
  end  
  R = -1;
endfunction