function dydt = f5(t,y)
    dydt(1) = y(2);
    dydt(2) = y(3);
    dydt(3) = y(3) - 3*y(2)*y(1) - t*y(1);

    dydt = [dydt(1); dydt(2); dydt(3)];
end