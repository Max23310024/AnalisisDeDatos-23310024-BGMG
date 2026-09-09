% Ejercicio 2: Promedio ponderado
% Aprobacion de examen por genero

hombres_total = 400;
hombres_tasa = 0.35;

mujeres_total = 600;
mujeres_tasa = 0.45;

% Cantidad que aprueba en cada grupo
hombres_aprueban = hombres_total * hombres_tasa;
mujeres_aprueban = mujeres_total * mujeres_tasa;

% Totales
total_aprueban = hombres_aprueban + mujeres_aprueban;
total_personas = hombres_total + mujeres_total;

% Tasa global (promedio ponderado)
tasa_global = (total_aprueban / total_personas) * 100;

% Promedio simple (para comparar)
promedio_simple = ((hombres_tasa + mujeres_tasa) / 2) * 100;

fprintf('--- Ejercicio 2: Promedio ponderado ---\n');
fprintf('Hombres que aprueban: %d\n', hombres_aprueban);
fprintf('Mujeres que aprueban: %d\n', mujeres_aprueban);
fprintf('Tasa global (ponderada): %.2f%%\n', tasa_global);
fprintf('Promedio simple (incorrecto): %.2f%%\n', promedio_simple);