% Ejercicio 3: Paradoja de Simpson - Hospitales

% Hospital A
A_bajo_casos = 100;
A_bajo_exitos = 98;
A_alto_casos = 100;
A_alto_exitos = 60;

% Hospital B
B_bajo_casos = 300;
B_bajo_exitos = 288;
B_alto_casos = 100;
B_alto_exitos = 55;

% Tasas por nivel de riesgo
A_bajo_tasa = (A_bajo_exitos / A_bajo_casos) * 100;
A_alto_tasa = (A_alto_exitos / A_alto_casos) * 100;

B_bajo_tasa = (B_bajo_exitos / B_bajo_casos) * 100;
B_alto_tasa = (B_alto_exitos / B_alto_casos) * 100;

% Tasas globales
A_global = ((A_bajo_exitos + A_alto_exitos) / (A_bajo_casos + A_alto_casos)) * 100;
B_global = ((B_bajo_exitos + B_alto_exitos) / (B_bajo_casos + B_alto_casos)) * 100;

fprintf('--- Ejercicio 3: Paradoja de Simpson ---\n');
fprintf('Hospital A - Bajo riesgo: %.2f%%\n', A_bajo_tasa);
fprintf('Hospital A - Alto riesgo: %.2f%%\n', A_alto_tasa);
fprintf('Hospital A - Global: %.2f%%\n', A_global);
fprintf('Hospital B - Bajo riesgo: %.2f%%\n', B_bajo_tasa);
fprintf('Hospital B - Alto riesgo: %.2f%%\n', B_alto_tasa);
fprintf('Hospital B - Global: %.2f%%\n', B_global);