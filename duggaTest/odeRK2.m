function [t,y] = odeRK2(f, ybv, tspan ,n)

    a = tspan(1);
    b = tspan(2);
    t = linspace(a,b,n+1);
    y = zeros(n+1,1);
    y(1,:) = ybv(1);
    h = (b-1) /n;
    for i = 1:n 
        k1 = f(t(i),y(i,:))';
        k2 = f(t(i)+h,y(i,:)+h*k1)';
        y(i+1,:) = y(i,:) + h*(k1+k2)/2;
    end
end
