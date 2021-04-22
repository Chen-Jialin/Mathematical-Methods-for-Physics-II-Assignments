close,clear,clc
l = 1;
b = 1;
a = 1;
n = 100;
x = 0:0.01 * l:l;
t = 0:0.01 * 8 * (l / a / pi)^2:8 * (l / a / pi)^2;
u = 0;
[X,T] = meshgrid(x,t);
C = zeros(n,1);
for k = 1:n
    C(k) = 4 * b / k^3 / pi^3 * (1 - (-1)^k);
    u = u + C(k) * exp(-(k * a * pi / l)^2 * T) .* sin(k * pi / l * X);
end
surf(X,T,u);
xlabel('x');
ylabel('t');
zlabel('u');
axis equal;