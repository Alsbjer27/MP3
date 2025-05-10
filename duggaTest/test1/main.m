functionDiff(4.5, [-2; -2.5; 2])
%%
ybv = [1; 0; -3];
tspan = [1,2];
n = 34;
[t,y] = odeRK2(@functionDiff, ybv, tspan, n);
plot(t,y(1,:));

