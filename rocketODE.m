function dydt = rocketODE(t, y)

    c = 0.35;
    g = 9.82;
    v = sqrt(y(2)^2 + y(4)^2);

    [u_x,u_y] = rocketControl(t);
    [m,mPrime] = mass(t);

    v_x = y(2);
    v_y = y(4);
    
    dv_xdt = - (c / m) * v * v_x + (mPrime / m) * u_x; 
  
    dv_ydt = - (c / m) * v * v_y + (mPrime / m) * u_y - g;
    
    dydt = [v_x; dv_xdt; v_y; dv_ydt];
end
