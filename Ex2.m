tspan = [0,3];
ybv = 1;
n = 200;

[t, y1] = odeEuler(@funkEx2, ybv, tspan, n);
[t, y2] = RK2(@funkEx2, ybv, tspan, n);
[t, y3] = RK4(@funkEx2, ybv, tspan, n);


% Jämför med analytisk metod

%%
yex = (sin(t)/2) - (cos(t)/2) + (3/2)*exp(-t);

semilogy(t,abs(yex-y1))
hold on
grid on 
semilogy(t,abs(yex-y2))
semilogy(t, abs(yex-y3))
plot(t,yex)

%%
clear 
tspan = [0,2];
ybv = [1;-2];
n = 50;

[t,y] = odeEuler(@funkEx143a, ybv, tspan, n);

plot(t,y)
grid on


