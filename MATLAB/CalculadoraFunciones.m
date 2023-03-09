while true % Loop para mantener la calculadora en funcionamiento
    % Solicitar al usuario la entrada de la función
    prompt = 'Ingrese la función a analizar (x como variable independiente): ';
    user_input = input(prompt, 's');
    
    % Verificar si el usuario desea salir
    if strcmp(user_input, 'salir')
        break
    end
    
    % Convertir la entrada del usuario en una función de MATLAB
    func = str2func(['@(x)' user_input]);
    
    % Crear un vector de valores x para evaluar la función
    x_vals = -10:0.1:10;
    
    % Evaluar la función en los valores de x y mostrar los resultados
    try
        y_vals = func(x_vals);
        plot(x_vals, y_vals)
        title('Gráfica de la función')
        xlabel('x')
        ylabel('y')
        grid on
        
        % Mostrar los resultados del análisis de la función
        disp(['La función es simétrica respecto al punto x = ' num2str(fzero(func,0))])
        disp(['La función tiene un mínimo en x = ' num2str(fminbnd(func,-10,10)) ' y un máximo en x = ' num2str(fminbnd(@(x)-func(x),-10,10))])
        disp(['El área bajo la curva es ' num2str(trapz(x_vals,y_vals))])
    catch
        disp('Error al analizar la función')
    end
    
    disp(' ')
end
