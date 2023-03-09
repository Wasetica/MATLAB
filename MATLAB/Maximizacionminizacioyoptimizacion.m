% Definir la función objetivo
f = @(x) x(1)*x(2)*x(3); % Ejemplo: maximizar el volumen de un paralelepípedo

% Definir las restricciones
A = [1 1 1; -1 0 0; 0 -1 0; 0 0 -1]; % Matriz de restricciones lineales
b = [10; 0; 0; 0]; % Vector de restricciones lineales
lb = [0, 0, 0]; % Límites inferiores
ub = [5, 5, 5]; % Límites superiores

% Ejecutar la optimización
x0 = [1, 1, 1]; % Punto inicial
[x, fval] = fmincon(f, x0, A, b, [], [], lb, ub);

% Mostrar resultados
fprintf('Solución encontrada:\n');
fprintf('x = (%f, %f, %f)\n', x(1), x(2), x(3));
fprintf('f(x) = %f\n', -fval); % Se utiliza -fval para maximizar

