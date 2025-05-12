ybv = [1; 0; -3];
tspan = [1,2];
n = 34;

result = f(5, [0; 1.5; 4]);
[t,y] = RK2(@f, ybv, tspan, n);

plot(t,y(1,:));

y(1, end)