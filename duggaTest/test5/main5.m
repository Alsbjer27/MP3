tspan = [1,2];
ybv = [1; 0; -3];
n = 24;

[t,y] = RK2_5(@f5, ybv, tspan, n);

plot(t, y(1,:))

y(1,end)