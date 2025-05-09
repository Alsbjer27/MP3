ybv = [1, 0];
tspan = [1,2];
[t,y] = odeRK2(@functionDiff, ybv, tspan, 36);