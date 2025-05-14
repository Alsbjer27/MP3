function [t,y] = odeEuler(f, ybv, tspan ,n)

a = tspan(1);
b = tspan(2);
t = linspace(a,b,n+1);
y(:,1) = ybv;
h =(b-a) /n;

for i = 1:n 
    y(:,i+1) = y(i) + h*f(t(i),y(:,i));
end



end
