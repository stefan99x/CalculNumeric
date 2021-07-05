warning('off')
nmin = 10;
nmax = 15;

n = [nmin:nmax];

for i = 1:length(n)
    H = hilb(n(i));
    k1 = cond(H,1);
    k2 = cond(H,2);
    kinf = cond(H,inf);
    
    printf("n = %d, k1 = %d, k2 = %d, kinf = %d \n",n(i),k1,k2,kinf);
endfor