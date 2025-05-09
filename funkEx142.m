function dy = funkEx142(t,y)
    %dy = [1 2; 2 -2]*y; Other option of doing it

    dy1 = y(1) +2*y(2);
    dy2 = 2*y(1) - 2*y(2);

    dy = [dy1; dy2];
end