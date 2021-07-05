function res = adquad(a,b,f,er)
  y1= simpson(a,b,f);
  y2= simpson(a,(a+b)/2,f) + simpson((a+b)/2,b,f);
  
  if abs(y1 - y2) < 15 * er
    res = y2;
    return;
  else
    res = adquad(a, (a+b)/2, f, er/2) + adquad((a+b)/2, b, f, er/2);
  endif
endfunction