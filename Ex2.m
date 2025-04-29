h = 0.1;
t = linspace(0,3, 100);
y0 = 1;

f = @(t,y) -y + sin(t);

y = zeros(size(t));
y(1) = y0;

for n = 1:length(t)-1
    k1 = h * f(t(n), y(n));
    k2 = h * f(t(n) + h, y(n) + h*k1);

end