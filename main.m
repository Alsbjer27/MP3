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
plot(z(1,:), z(3,:), 'r-', 'LineWidth', 2.3);
hold off;
xlabel('x-position (m)');
ylabel('y-position (m)');
legend('Slalombana', 'Raketens bana');
title('Rakets rörelse genom slalombanan');
grid on;
axis equal;

% Skapa vektor med tidpunkter
t_vec = linspace(tspan(1), tspan(2), 1000);

% Anropa motorAngle för varje tidpunkt
theta_vec = arrayfun(@motorAngle, t_vec);

% Konvertera till grader (valfritt, för tydligare tolkning)
theta_deg = rad2deg(theta_vec);

% Plot
figure(2);
plot(t_vec, theta_deg, 'LineWidth', 1.5);
xlabel('Tid (s)');
ylabel('Motorvinkel \theta (grader)');
title('Motorvinkel \theta(t) över tid');
grid on;




vx = z(2,:); % Hastighet i x-led för alla tidpunkter
vy = z(4,:); % Hastighet i y-led för alla tidpunkter
speed = sqrt(vx.^2 + vy.^2); % Total fart (notera .^2 för elementvis kvadrering)

figure(3);
plot(t, speed, 'LineWidth', 1.5);
xlabel('Tid (s)');
ylabel('Fart (m/s)');
title('Raketens fart som funktion av tiden');
grid on;
