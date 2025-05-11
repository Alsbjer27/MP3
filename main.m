clc
clear

track = load('bana-324.mat');


x = 160;  % x-position
y = 0;    % y-position


dx = track.v0 * cos(180 - track.a0); % begynnelse vinkel
dy = track.v0 * sin(180 - track.a0); 

ybv = [x; dx; y; dy]; % Totala begynnelsevillkor


tspan = [0, 100]; % Tidspan
n = 1000; % Iterationer

v = sqrt(dx.^2 + dy.^2);  % Speed = sqrt(v_x^2 + v_y^2)

% Solve the system using RK4
[t, y] = RK4(@(t,ybv)rocketODE(t,ybv,v), ybv, tspan, n);  



% Plot the track and rocket's trajectory
figure(1);
plotTrack(track.portx, track.porty, track.ver, track.v0, track.a0); hold on;
plot(y(:,2), y(:,4), 'r-', 'LineWidth', 2);  % Plot rocket's path
hold off;

% Add labels and legend
xlabel('x-position (m)');
ylabel('y-position (m)');
legend('Slalombana', 'Raketens bana');
title('Rakets rörelse genom slalombanan');
grid on;
axis equal;


















% figure(2)
% plotTrack(track.portx,track.porty,track.ver,track.v0,track.a0); hold on
% plot(y(:,1),y(:,3),'o');
% hold off
% 
% figure(3)
% plot(y(:,1),v)
% xlabel('Avstånd i x-led (m)')
% ylabel('Hastighet (m/s)')
% grid on
% 
% figure(4)
% r_a = zeros(1,tspan(2)+1);
% for t = tspan(1):tspan(2)
%     r_a(1,t+1) = rad2deg(motorAngle(t));
% end
% plot(linspace(tspan(1),tspan(2),71),r_a)
% grid on
% ylabel('Vinkel (grader)')
% xlabel('Tid (s)')