
function z = AitkenPolynomial(x,y,a)
er=1e-3; 
[z, I] = sort(abs(x-a)); #Return a copy of x with the elements arranged in increasing order.
x = x(I);
y = y(I);
n=length(x);

ak=zeros(n,n); # create a matrix of zeros
ak(:,1)=y'; # Complex conjugate transpose
for i=1:n
    for j=1:i-1
       ak(i,j+1) = (1/(x(i)-x(j))) * (ak(j,j) * (x(i)-a) - ak(i,j) * (x(j)-a));
    endfor
    if i>1 && abs(ak(i-1,i-1)-ak(i,i))<=er
          z = ak(i,i);
          disp(i);  #display value of x      
          return
    endif
     
endfor

endfunction