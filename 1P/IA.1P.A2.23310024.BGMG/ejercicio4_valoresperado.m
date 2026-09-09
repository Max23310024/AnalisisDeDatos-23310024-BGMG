% Ejercicio 4: Valor esperado - Poliza de seguro

precio_poliza = 50;
prob_siniestro = 0.02;
pago_siniestro = 2000;

% Pago esperado
pago_esperado = prob_siniestro * pago_siniestro;

% Ganancia esperada por poliza
ganancia_esperada = precio_poliza - pago_esperado;

fprintf('--- Ejercicio 4: Valor esperado ---\n');
fprintf('Pago esperado por siniestro: $%.2f\n', pago_esperado);
fprintf('Ganancia esperada por poliza: $%.2f\n', ganancia_esperada);