% Ejercicio 5: Modelo lineal - Gasto vs Ingreso

gasto_fijo = 180;
pendiente = 0.25;

% c) Aumento de gasto si ingreso sube 1000
aumento_ingreso = 1000;
aumento_gasto = pendiente * aumento_ingreso;

% d) Gasto estimado con ingreso de 2000
ingreso_ejemplo = 2000;
gasto_estimado = gasto_fijo + pendiente * ingreso_ejemplo;

% Porcentaje del ingreso que representa el gasto
porcentaje_gasto = (gasto_estimado / ingreso_ejemplo) * 100;

fprintf('--- Ejercicio 5: Modelo lineal ---\n');
fprintf('Gasto fijo mensual: $%.2f\n', gasto_fijo);
fprintf('Gasto marginal (por cada peso extra): $%.2f\n', pendiente);
fprintf('Si el ingreso sube $%.2f, el gasto sube: $%.2f\n', aumento_ingreso, aumento_gasto);
fprintf('Con ingreso de $%.2f, gasto estimado: $%.2f\n', ingreso_ejemplo, gasto_estimado);
fprintf('Ese gasto representa el %.2f%% del ingreso\n', porcentaje_gasto);