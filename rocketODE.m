function dydt = rocketODE(t, y)

    c = 0.35;
    g = 9.82;

    km = 2400;

    v_x = y(2);
    v_y = y(4);

    u_x = rocketControl(t);
    u_y = rocketControl(t);

    [m,mPrime] = mass(t);

    v = sqrt(y(2)^2 + y(4)^2);
    
    % Derivata av v_x (acceleration i x-led)
    dv_xdt = - (c / m) * v * v_x + (mPrime / m) * u_x;
   
    % Derivata av v_y (acceleration i y-led)
    dv_ydt = - (c / m) * v * v_y + (mPrime / m) * u_y - g;
    
    % Returnera resultatet som en vektor
    dydt = [v_x; dv_xdt; v_y; dv_ydt];
end
