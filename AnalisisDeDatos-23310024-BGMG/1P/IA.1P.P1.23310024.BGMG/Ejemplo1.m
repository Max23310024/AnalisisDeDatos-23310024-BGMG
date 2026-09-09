%% Ejemplo 1: Descenso del gradiente en una funcion cuadratica
% Objetivo: encontrar el minimo de f(x) = (x-3)^2 de forma iterativa
clc; clear; close all;

% Defino la funcion y su derivada (el gradiente en 1 variable)
f = @(x) (x - 3).^2;
df = @(x) 2*(x - 3);

% Parametros del algoritmo
alpha = 0.1;        % tasa de aprendizaje: que tan grande es cada paso
max_iter = 50;       % limite de iteraciones por seguridad
x0 = -2;              % punto de partida, lejos del minimo real (x=3)
tolerancia = 1e-6;   % si el cambio es menor a esto, ya convergio

x = x0;
historial_x = x;
historial_f = f(x);

% Bucle principal: aqui es donde "desciende" el algoritmo
for iter = 1:max_iter
    grad = df(x);            % pendiente en el punto actual
    x_new = x - alpha*grad;  % me muevo en direccion contraria a la pendiente

    historial_x = [historial_x; x_new];
    historial_f = [historial_f; f(x_new)];

    if abs(x_new - x) < tolerancia
        fprintf('Convergencia alcanzada en la iteracion %d\n', iter);
        break;
    end
    x = x_new;
end

fprintf('Minimo encontrado: x = %.4f, f(x) = %.4f\n', x, f(x));

% Grafico la funcion y como fue "rodando" el punto hasta el minimo
figure;
x_vals = linspace(-5, 10, 100);
plot(x_vals, f(x_vals), 'b-', 'LineWidth', 1.5); hold on;
plot(historial_x, historial_f, 'ro-', 'MarkerSize', 5, 'LineWidth', 1);
xlabel('x'); ylabel('f(x)');
title('Gradiente Descendente en f(x) = (x-3)^2');
legend('Funcion', 'Trayectoria del descenso', 'Location', 'best');
grid on;
