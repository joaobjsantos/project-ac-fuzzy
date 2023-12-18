num = [1.5 0.375];
den = [1 3 2.25 0.55];
pi = roots(den)
ti = -1./pi
Ts = 1/4*min(ti)


[numd, dend] = c2dm(num,den,Ts,'zoh')