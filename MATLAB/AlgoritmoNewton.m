% Función de ejemplo: f(x) = x^2 - 4x + 4
f = @(x) x^2 - 4*x + 4;

% Gradiente de la función de ejemplo: f'(x) = 2x - 4
grad_f = @(x) 2*x - 4;

% Hessian de la función de ejemplo: f''(x) = 2
hess_f = @(x) 2;

% Parámetros de los algoritmos
x0 = 0; % Punto inicial
alpha = 0.1; % Tamaño de paso para gradiente descendiente
tol = 1e-6; % Tolerancia para la convergencia

% Gradiente Descendiente
x_gd = x0;
while abs(grad_f(x_gd)) > tol
    x_gd = x_gd - alpha*grad_f(x_gd);
end

fprintf('Gradiente Descendiente:\n');
fprintf('Mínimo en x = %f\n', x_gd);
fprintf('Valor mínimo = %f\n\n', f(x_gd));

% Método de Newton
x_newton = x0;
while abs(grad_f(x_newton)) > tol
    x_newton = x_newton - grad_f(x_newton)/hess_f(x_newton);
end

fprintf('Método de Newton:\n');
fprintf('Mínimo en x = %f\n', x_newton);
fprintf('Valor mínimo = %f\n', f(x_newton));