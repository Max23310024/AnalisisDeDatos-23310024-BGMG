%% Ejemplo 3 (propio): Tiempo de ejecucion vs tamano del dataset
% Idea propia: en vez de datos estadisticos genericos, mido algo de mi
% area (desarrollo de software): como crece el tiempo de un algoritmo
% de ordenamiento (bubble sort) segun el tamano de la entrada, y ajusto
% una regresion lineal a esa relacion usando gradiente descendente.
clc; clear; close all;

% --- Paso 1: generar los datos (X = tamano, y = tiempo medido) ---
N_vals = [500 1000 2000 4000 6000 8000 10000 15000];
repeticiones = 5;
tiempos = zeros(size(N_vals));

for k = 1:length(N_vals)
    n = N_vals(k);
    t_acum = 0;
    for r = 1:repeticiones
        v = randi(10000, 1, n);   % vector aleatorio a ordenar
        tic;
        % bubble sort simple (a proposito poco optimo, para que el
        % tiempo crezca de forma medible con n)
        for i = 1:length(v)-1
            for j = 1:length(v)-i
                if v(j) > v(j+1)
                    temp = v(j); v(j) = v(j+1); v(j+1) = temp;
                end
            end
        end
        t_acum = t_acum + toc;
    end
    tiempos(k) = t_acum / repeticiones;  % tiempo promedio
    fprintf('N = %d -> tiempo promedio = %.4f s\n', n, tiempos(k));
end

X = N_vals(:);      % tamano del dataset
y = tiempos(:);     % tiempo de ejecucion (segundos)

figure;
scatter(X, y, 'filled');
xlabel('Tamano del dataset (N)'); ylabel('Tiempo de ejecucion (s)');
title('Datos propios: tiempo de ejecucion vs tamano de entrada');
grid on;

% --- Paso 2: mismo procedimiento matematico que el Ejemplo 2 ---
% Normalizo X porque los tamanos van de 500 a 15000 y el gradiente
% descendente converge mal con escalas tan distintas entre X y theta
X_norm = (X - mean(X)) / std(X);

m = length(y);
alpha = 0.1;
num_iters = 1000;
theta = zeros(2,1);
X_aug = [ones(m,1), X_norm];
J_history = zeros(num_iters,1);

for iter = 1:num_iters
    h = X_aug * theta;
    error = h - y;

    grad0 = (1/m) * sum(error);
    grad1 = (1/m) * sum(error .* X_norm);
    theta = theta - alpha * [grad0; grad1];

    J_history(iter) = (1/(2*m)) * sum(error.^2);
end

fprintf('theta0 = %.6f\n', theta(1));
fprintf('theta1 = %.6f\n', theta(2));

figure;
scatter(X, y, 'filled'); hold on;
plot(X, X_aug*theta, 'r-', 'LineWidth', 2);
xlabel('Tamano del dataset (N)'); ylabel('Tiempo de ejecucion (s)');
title('Ajuste lineal: tiempo de ejecucion vs tamano de entrada');
legend('Datos medidos', 'Ajuste lineal', 'Location', 'best');
grid on;

figure;
plot(1:num_iters, J_history, 'b-', 'LineWidth', 1.5);
xlabel('Iteracion'); ylabel('Costo J(\theta)');
title('Convergencia del costo - Ejemplo propio');
grid on;
