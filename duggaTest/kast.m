function dz = kast(t,z)
    c = 0.05 ; g = 9.81;
    dz = [z(2)
          -c*sqrt(z(2)^2 + z(4)^2)*z(2)
          z(4)
          -c*sqrt(z(2)^2 + z(4)^2)*z(4) - g];
end