function [t,y] = odeEuler(f, ybv, tspan, n)
    a = tspan(1);
    b = tspan(2);
    t = linspace(a,b,n+1);
    k = length(ybv);
    y = zeros(k, n+1);
    y(:,1) = ybv;

    h = t(2) - t(1);

    for i = 1:n
        y(:,i+1) = y(:,i) + h*f(t(i), y(:,i));
    end
end
