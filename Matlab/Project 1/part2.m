clc; clear; close all;

range = 0:0.001:1;
beta_l = 2 .* pi .* range;
 % Calculate the E-field pattern
 D = zeros(length(beta_l));
 for i=1:length(beta_l)
 den = @(theta) ((cos(beta_l(i) .* cos(theta)) - cos(beta_l(i))) ./ (sin(theta) .* (1 - cos(beta_l(i))))).^2 .* sin(theta);
 D(i) = 2 ./ (integral(den, 0, pi));
 end

% Plot D vs l/lambda
figure('Name', 'Directivity vs l/lambda', 'NumberTitle', 'off');
plot(range, D, 'b-', 'LineWidth', 1.5); 
hold on;

xlabel('l/\lambda Ratios');
ylabel('Directivity D');
title('D vs l/\lambda');
grid on;
% Specific l/lambda 
specific_ratios = [0.25, 0.5, 0.625, 0.75];
% Find the corresponding values of D for these ratios
specific_D = zeros(size(specific_ratios));

for j = 1:length(specific_ratios)
    % Find index for the specific ratio
    [~, idx] = min(abs(range - specific_ratios(j))); 
    specific_D(j) = D(idx); % Get corresponding D value
    
    % Plot vertical line
    plot([specific_ratios(j), specific_ratios(j)], [0, specific_D(j)], 'r--', 'LineWidth', 1.2);
    
    % Plot horizontal line
    plot([0, specific_ratios(j)], [specific_D(j), specific_D(j)], 'g--', 'LineWidth', 1.2);
    
    % Add text labels
    text(specific_ratios(j), -0.2, sprintf('%.2f', specific_ratios(j)), ...
        'HorizontalAlignment', 'center', 'Color', 'r', 'FontSize', 9);
    text(-0.04, specific_D(j), sprintf('%.2f', specific_D(j)), ...
        'HorizontalAlignment', 'right', 'Color', 'b', 'FontSize', 9);
end

% Add markers at the intersection points
plot(specific_ratios, specific_D, 'ko', 'MarkerSize', 8, 'MarkerFaceColor', 'k');

% Add a legend
legend('D vs l/\lambda', 'Vertical markers', 'Horizontal markers', 'Key points', 'Location', 'best');
hold off;
