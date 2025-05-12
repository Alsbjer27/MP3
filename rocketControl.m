function [u_x, u_y] = rocketControl(t)

    theta = motorAngle(t);
    km = 2400;
    u_x = km * cos(theta);
    u_y = km * sin(theta);
end