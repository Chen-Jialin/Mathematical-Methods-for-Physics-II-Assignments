syms x w y t a
f = 1/2/a*(cos(w*x)*(sin(y+a*(t-x))-sin(y-a*(t-x))));
int(f,x,0,t)
