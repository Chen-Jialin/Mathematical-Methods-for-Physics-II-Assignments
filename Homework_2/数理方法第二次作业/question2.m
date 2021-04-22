function[u] = question2(x1,t1)
syms x
syms n
syms t
L = 1;
a = 1*10^12;
f1 = 2/L*exp(-x^2)*sin(n*pi*x/L);
f2 = 2/n/pi/2*a*x*exp(-x^2)*sin(n*pi*x/L);
f1 = matlabFunction(f1);
f2 = matlabFunction(f2);
u = 0;
s = 100;
dx = L/s;
xi = 0;
Cn = 0;
Dn = 0;
for n = 1:100
    for i = 1:s
        Cn = Cn + dx*f1(n,xi);
        Dn = Dn + dx*f2(n,xi);
        xi = xi + dx;
    end
    u=u+(Cn*cos(a*n*pi*t1/L)+Dn*sin(a*n*pi*t1/L))*sin(n*pi*x1/L);
end
