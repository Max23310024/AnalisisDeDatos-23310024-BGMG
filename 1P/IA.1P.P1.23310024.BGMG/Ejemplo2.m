%% Ejemplo 2: Regresion lineal con gradiente descendente
% Objetivo: ajustar una recta y = theta0 + theta1*x a datos con ruido
clc; clear; close all;

rng(42); % semilla fija para poder reproducir el experimento
m = 50;
X = 2 * rand(m, 1);          % x en el rango [0,2]
y = 4 + 3 * X + randn(m, 1); % relacion real: y = 4 + 3x, mas ruido

figure;
scatter(X, y, 'filled');
xlabel('x'); ylabel('y');
title('Datos sinteticos');
grid on;

alpha = 0.1;
num_iters = 1000;
theta = zeros(2, 1);     % [theta0; theta1] arrancan en cero

X_aug = [ones(m,1), X];  % columna de 1's para theta0 (el sesgo/bias)
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    h = X_aug * theta;      % prediccion actual del modelo
    error = h - y;          % que tan lejos estoy del valor real

    grad0 = (1/m) * sum(error);
    grad1 = (1/m) * sum(error .* X);
    grad = [grad0; grad1];

    theta = theta - alpha * grad;   % actualizo ambos parametros a la vez

    J_history(iter) = (1/(2*m)) * sum(error.^2); % costo de esta iteracion
end

fprintf('theta0 = %.4f (esperado ~4)\n', theta(1));
fprintf('theta1 = %.4f (esperado ~3)\n', theta(2));

figure;
scatter(X, y, 'filled'); hold on;
plot(X, X_aug * theta, 'r-', 'LineWidth', 2);
xlabel('x'); ylabel('y');
title('Regresion lineal ajustada con gradiente descendente');
legend('Datos', 'Ajuste lineal', 'Location', 'best');
grid on;

figure;
plot(1:num_iters, J_history, 'b-', 'LineWidth', 1.5);
xlabel('Iteracion'); ylabel('Costo J(\theta)');
title('Convergencia del costo');
grid on;
