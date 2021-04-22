function[u] = question3(x,t)
L = 1;
a = 0.01;
b = 1;
u = 0;
for k = 1:2
    u = u + 8*b/pi^3/(2*k+1)^3*sin((2*k+1)*x*pi/L)*exp(-a^2*pi^2*t/L^2*(2*k+1)^2);
end