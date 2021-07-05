a = 1;
b = 3;
n1 = 50;
n2 = 100;
prec = 10^-4;
real_value = -1.4260247818;

f = @(x) 100./(x.^2) .* sin(10 ./x);

fplot(f, [a,b]);

val_adquad = adquad(a,b,f,prec)
val_simpson1 = repeated_simpson(a,b,n1,f)
val_simpson2 = repeated_simpson(a,b,n2,f)


adquad_err = abs(val_adquad-real_value)
simpson1_err = abs(val_simpson1-real_value)
simpson2_err = abs(val_simpson2-real_value)
