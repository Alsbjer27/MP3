clc
clear

load('bana-324.mat');
%plotTrack(portx,porty,ver,v0,a0)
x = 160;  % x-position
y = 0;    % y-position

dx = v0 * cosd(a0); 
dy = v0 * sind(a0); 

ybv = [x; dx; y; dy]; % Totala begynnelsevillkor


tspan = [0 64.3]; % Tidspan
n = 1000; % Iterationer

% Solve the system using RK4
[t, z] = RK4(@rocketODE, ybv, tspan, n);  


figure(1);
plotTrack(portx, porty, ver, v0, a0); hold on;
plot(z(1,:), z(3,:), 'r-', 'LineWidth', 1);
hold off;


xlabel('x-position (m)');
ylabel('y-position (m)');
legend('Slalombana', 'Raketens bana');
title('Rakets rörelse genom slalombanan');
grid on;
axis equal;

speed = sqrt(z(:,2).^2 + z(:,4).^2);  % beräkna farten

figure;
plot(z(:,1), speed, 'b', 'LineWidth', 1.5); hold on;
plot(z(1,1), speed(1), 'go', 'MarkerFaceColor', 'g');
xlabel('Avstånd x (m)')
ylabel('Fart (m/s)')
title('Fart över avstånd')
legend('Fart (m/s) över avstånd', 'Begynnelsefart', 'Location', 'northeast')
grid on
