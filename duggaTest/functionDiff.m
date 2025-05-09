function dydt = functionDiff(t, y)
    dydt1 = y(2);   % dy1/dt = y2
    dydt2 = -3;     % dy2/dt = -3 (konstant andraderivata)

    dydt = [dydt1, dydt2];
end
