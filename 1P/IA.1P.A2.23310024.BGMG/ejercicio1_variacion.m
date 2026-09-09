% Ejercicio 1: Variacion porcentual
% Ventas, costos y utilidad

ventas_inicial = 200000;
ventas_final = 260000;

costos_inicial = 120000;
costos_final = 150000;

% a) Variacion porcentual de ventas
var_ventas = ((ventas_final - ventas_inicial) / ventas_inicial) * 100;

% b) Variacion porcentual de costos
var_costos = ((costos_final - costos_inicial) / costos_inicial) * 100;

% c) Utilidad inicial y final
utilidad_inicial = ventas_inicial - costos_inicial;
utilidad_final = ventas_final - costos_final;

% Variacion porcentual de utilidad
var_utilidad = ((utilidad_final - utilidad_inicial) / utilidad_inicial) * 100;

% Mostrar resultados
fprintf('--- Ejercicio 1: Variacion porcentual ---\n');
fprintf('Variacion de ventas: %.2f%%\n', var_ventas);
fprintf('Variacion de costos: %.2f%%\n', var_costos);
fprintf('Utilidad inicial: $%.2f\n', utilidad_inicial);
fprintf('Utilidad final: $%.2f\n', utilidad_final);
fprintf('Variacion de utilidad: %.2f%%\n', var_utilidad);