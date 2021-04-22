clear 
x = 0:100;
t = 0:100;
xlen = length(x);
tlen = length(t);
z = zeros(tlen,xlen);
for i = 1:xlen
    for j = 1:tlen
        z(j,i) = question3(1/200*i,j);
    end
end
[xx,tt]=meshgrid(x,t);
figure;mesh(xx,tt,z)
xlabel('x');ylabel('t');zlabel('z')
