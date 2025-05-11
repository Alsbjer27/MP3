function dydt = rocketODE(t, y, v)

    c = 0.35;
    g = 9.82;

    km = 2400;

    v_x = y(2);
    v_y = y(4);

    u_x = km * cos(rocketControl(t));
    u_y = km * sin(rocketControl(t));

    [m,mPrime] = mass(t);
    
    % Derivata av v_x (acceleration i x-led)
    dv_xdt = - (c / m) * v * v_x + (mPrime / m) * u_x;
    
    % Derivata av y (hastighet i y-led)
    dydt_1 = v_y;
    
    % Derivata av v_y (acceleration i y-led)
    dv_ydt = - (c / m) * v * v_y + (mPrime / m) * u_y - g;
    
    % Returnera resultatet som en vektor
    dydt = [v_x; dv_xdt; v_y; dv_ydt];
end
