% Constantes
P = 0.017;
a = 0.0039;

P20 = 0.017; % Résistivité initiale à 20°C en Ωmm²/m pour Weiseman
a20 = 4.3e-3; % Coefficient de température en K^-1 pour Weiseman
b20 = 0.6e-6; % Coefficient quadratique en K^-2 pour Weiseman

% Tableau de températures
theta = 20:0.5:100;

% Calcul de Δθ
delta_theta = theta - 20;

% Calcul de P_theta selon la première formule
P_theta_1 = P * (1 + a * delta_theta);

% Calcul de P_theta selon la formule de Weiseman
P_theta_2 = P20 * (1 + a20 * delta_theta + b20 * delta_theta.^2);

% Tracé des deux courbes
figure;
plot(theta, P_theta_1, 'b-', 'LineWidth', 1.5);
hold on;
plot(theta, P_theta_2, 'r--', 'LineWidth', 1.5);
hold off;

% Ajout des labels et de la légende
xlabel('Température (\circC)');
ylabel('Résistivité (Ωmm²/m)');
legend('Formule 1: P_\theta = P(1 + a\Delta\theta)', ...
    'Formule Weiseman: P_\theta = P_{20}(1 + a_{20}\Delta\theta + b_{20}\Delta\theta^2)', ...
    'Location', 'northwest');
title('Comparaison des deux formules de résistivité');
grid on;