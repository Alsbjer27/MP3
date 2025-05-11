function theta = motorAngle(t)
    % Stegvis motorvinkel beroende på tidsintervall
    if t < 0.6 && t > 0
        theta = pi;  % Vinkel nedåt
    elseif t < 3.7 && t > 0.6
        theta = 5*pi/4;  % Vinkel mot vänster nedåt
    elseif t < 7.6 && t > 3.7
        theta = pi;  % Vinkel nedåt
    elseif t < 12.3 && t > 7.6
        theta = 3*pi/2;  % Vinkel rakt nedåt
    elseif t < 16.8 && t > 12.3
        theta = 3*pi/4;  % Vinkel uppåt till vänster
    elseif t < 18.9 && t > 16.8
        theta = 3*pi/2;  % Fortsätt nedåt
    else 
        theta = pi;  % Vinkel nedåt (slutvärde)
    end
end
