function[u] = question2(x,t)
syms x t
L = 1;
a = 1;
n = 1;
f1 = 2/L*exp(-x^2)*sin(n*pi*x/L);
f2 = 2/n/pi/2*a*x*exp(-x^2)*sin(n*pi*x/L);
f1 = matlabFunction(f1);
f2 = matlabFunction(f2);
u = 0;
for n = 1:100
    Cn = integral(f1,0,L);
    Dn = integral(f2,0,L);
    u = u + (Cn*cos(a*n*pi*t/L)+Dn*sin(a*n*pi*t/L))*sin(n*pi*x/L);
end