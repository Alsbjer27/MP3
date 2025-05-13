function theta = motorAngle(t)
    if t >= 0 && t <= 12.3 
        theta = -3*pi/4;

    elseif t >= 12.3 && t <= 45
        theta = -pi/2;
    
    elseif t >= 45 && t <= 49
        theta = -pi/4;
    
    
    elseif t >= 49 && t <= 55
        theta = -3*pi/4;
    
    elseif t >= 55 && t <= 60
        theta = -3*pi/4;
    

    elseif t >= 60 && t <= 61
        theta = pi/2;
    
    
    else 
        theta = -3*pi/4;
   
    end
    end
