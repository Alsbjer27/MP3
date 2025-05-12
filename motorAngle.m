function theta = motorAngle(t)
    if t < 38.2
        theta = 3*pi/2;         % N
    elseif t < 50
        theta = pi;             % E
    elseif t < 56.5
        theta = 3*pi/2;         % N
    elseif t < 62.2
        theta = pi;             % E
    elseif t < 100
        theta = pi/4;           % SW
    else
        theta = 0;
    end
end
