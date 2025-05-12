clc
clear

load('bana-324.mat');
plotTrack(portx,porty,ver,v0,a0)
x = 160;  % x-position
y = 0;    % y-position

dx = v0 * cosd(a0); % begynnelse vinkel
dy = v0 * sind(a0); 

ybv = [x; dx; y; dy]; % Totala begynnelsevillkor


tspan = [0 100]; % Tidspan
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








% figure(2)
% plot(z(:,1))
% xlabel('Avstånd i x-led (m)')
% ylabel('Hastighet (m/s)')
% grid on
% 
% figure(3)
% r_a = zeros(1,tspan(2)+1);
% for t = tspan(1):tspan(2)
%     r_a(1,t+1) = rad2deg(motorAngle(t));
% end
% plot(linspace(tspan(1),tspan(2),71))
% grid on
% ylabel('Vinkel (grader)')
% xlabel('Tid (s)')