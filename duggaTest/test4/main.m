clc

tspan = [1, 2];
ybv = [1; 0; -3];
n = 36;

[t,y] = RK2(@f, ybv, tspan, n);

plot(t,y(1,:))

y(1,end)
y(3,end)