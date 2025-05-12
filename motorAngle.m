function theta = motorAngle(t)
    if t >= 0 && t <= 10 
        theta = -3*pi/4;

    elseif t >= 11 && t <= 19
        theta = -pi/2;
    
    elseif t >= 20 && t <= 24
        theta = -pi/2;

    elseif t >= 25 && t <= 33
        theta = -3*pi/4;
    
    elseif t >= 34 && t <= 45
        theta = -pi/2;
    
    
    
    
    else 
        theta = -pi/4;
   
    end
    end
