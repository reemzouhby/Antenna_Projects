clc; clear; close all;
theta = linspace(0, 2*pi,1000);
phi = linspace(0, 2*pi, 1000);
[Theta, Phi] = meshgrid(theta, phi);

region = [0.1, 0.25, 0.5, 0.625,0.75,0.999];

figure_theta = figure('Name', 'E vs Theta', 'NumberTitle', 'off');
figure_phi = figure('Name', 'E vs Phi', 'NumberTitle', 'off');
figure_3D = figure('Name', '3D Radiation Pattern', 'NumberTitle', 'off');

for i = 1:length(region)
    ratio = region(i);
    beta_l = 2 * pi * ratio;
    
    % Calculate the E-field pattern
    E_theta = abs((cos(beta_l .* cos(theta)) - cos(beta_l)) ./ sin(theta).* (1 - cos(beta_l)));
    E_3D = abs((cos(beta_l .* cos(Theta)) - cos(beta_l)) ./ sin(Theta));
    
    % Normalize
    E_theta_norm = E_theta / max(E_theta);
    E_3D_norm = E_3D / max(E_3D(:));
    
    % Calculate theta_0.5 (half-power beamwidth)
    E_max = max(E_theta_norm);
    idx_half = find(E_theta_norm >= E_max / sqrt(2), 1, 'first');
    if ~isempty(idx_half)
        theta_0_5 = theta(idx_half);
    else
        theta_0_5 = 0;
    end
    
    % Plot E vs. theta - Full 360 degree pattern
    figure(figure_theta);
    subplot(2, 3, i, polaraxes);
    
    % Create full circle pattern
    theta_full = [theta, pi + fliplr(pi - theta)];
    E_full = [E_theta_norm, fliplr(E_theta_norm)];
    
    polarplot(theta_full, E_full, 'b', 'LineWidth', 1.5);
    hold on;
    if theta_0_5 > 0
        polarplot([theta_0_5 theta_0_5], [0 E_max], 'r--', 'LineWidth', 1.5);
        polarplot([2*pi-theta_0_5 2*pi-theta_0_5], [0 E_max], 'r--', 'LineWidth', 1.5);
    end
    hold off;
    title(['E vs. \theta for l/\lambda = ' num2str(ratio)]);
    if theta_0_5 > 0
        beamwidth = 2 * rad2deg(pi/2 - theta_0_5);
        legend('E(\theta)', ['\theta_{0.5} = ' num2str(abs(round(beamwidth))) '^o'], 'Location', 'best');
    end
    
    % Plot E vs. phi for constant theta (pi/2)
    figure(figure_phi);
    subplot(2, 3, i, polaraxes);
    E_phi = ones(size(phi));
    polarplot(phi, E_phi, 'b', 'LineWidth', 1.5);
    title(['E vs. \phi for l/\lambda = ' num2str(ratio)]);
    
    % Plot the 3D radiation pattern
    figure(figure_3D);
    subplot(2, 3, i);
    [X, Y, Z] = sph2cart(Phi, pi/2 - Theta, E_3D_norm);
    surf(X, Y, Z, E_3D_norm);
    title(['3D Pattern for l/\lambda = ' num2str(ratio)]);
    xlabel('X'); ylabel('Y'); zlabel('Z');
    shading interp;
    axis equal;
    grid on;
    colormap jet;
    view(45, 30);
end
