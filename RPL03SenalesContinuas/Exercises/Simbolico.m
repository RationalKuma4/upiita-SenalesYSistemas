syms a t w j
f = int(exp(-t.*(a+1j.*w)), t, 0, inf)
subs(f,0,0)