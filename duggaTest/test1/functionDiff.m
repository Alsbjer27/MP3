function dydt = functionDiff(t, y)
    dydt(1) = y(2);
    dydt(2) = y(3);
    dydt(3) = -3*y(1)*y(2) -t*y(1) + y(3);

    dydt = [dydt(1); dydt(2); dydt(3)];
end
