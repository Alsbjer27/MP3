tspan = [1,2];
n = 24;
ybv = [1; 0; -3];

[t,y] = odeRK2(@func, tspan, ybv, n);
plot(t, y(1,:));

y(1,end)