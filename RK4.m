function [t,z] = RK4(f, ybv, tspan, n)
    a = tspan(1);
    b = tspan(2);
    t = linspace(a,b,n+1);
    z(:,1) = ybv;
    h = (b-a)/n;

    for i = 1:n
        disp(['t = ', num2str(t(i))])
        disp(['y = ', num2str(z(:, i)')])

        k1 = f(t(i), z(:,i));
        k2 = f(t(i) + h/2, z(:,i) + h*k1/2);
        k3 = f(t(i) + h/2, z(:,i) + h*k2/2);
        k4 = f(t(i) + h, z(:,i) + h*k3);
        z(:,i+1) = z(:,i) + h*(k1 + 2*k2 + 2*k3 +k4)/6;
    end
end