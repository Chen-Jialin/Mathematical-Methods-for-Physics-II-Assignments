close,clear,clc
a = 1;
l = 1;
x = 0:0.01 * l:l;
t = 0:0.01 * 2 * l / a:2 * l / a;
n = 100;
u = 0;
[X,T] = meshgrid(x,t);
C = zeros(n,1);
D = zeros(n,1);
syms xi
for k = 1:n
    C(k) = 2 / l * double(vpaintegral(exp(-xi^2) * cos(k * pi / l * xi),xi,[0 l]));
    D(k) = 2 / k / a / pi * double(vpaintegral(2 * a * xi * exp(-xi^2) * cos(k * pi / l * xi),xi,[0 l]));
    u = u + (C(k) * cos(k * a * pi / l * T) + D(k) * sin(k * a * pi / l * T)) .* cos(k * pi / l * X);
end
C_0 = 1 / l * double(vpaintegral(exp(-xi^2),xi,[0 l]));
u = u + C_0;
surf(X,T,u);
xlabel('x');
ylabel('t');
zlabel('u');
axis equal;