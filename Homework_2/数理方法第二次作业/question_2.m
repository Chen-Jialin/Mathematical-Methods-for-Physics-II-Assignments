clear
syms x
x = 0:200;
t = 0:20;
xlen = length(x);
tlen = length(t);
z = zeros(tlen,xlen);
for i = 1:xlen
    for j = 1:tlen
        z(j,i) = question2(1/200*i,j);
    end
end
[xx,tt]=meshgrid(x,t);
figure;mesh(xx,tt,z)
xlabel('x');ylabel('t');zlabel('z')
