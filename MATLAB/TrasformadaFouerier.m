% Definir la señal de entrada
t = linspace(0, 2*pi, 256);
x = sin(2*pi*5*t) + cos(2*pi*10*t);

% Calcular la Transformada de Fourier
X = fft(x);

% Calcular el espectro de frecuencia
Fs = 1/(t(2) - t(1));
f = Fs*(0:(length(x)/2))/length(x);
P = abs(X/length(x)).^2;

% Graficar la señal de entrada
subplot(2,1,1);
plot(t, x);
title('Señal de entrada');
xlabel('Tiempo (s)');
ylabel('Amplitud');

% Graficar el espectro de frecuencia
subplot(2,1,2);
plot(f, P(1:length(f)));
title('Espectro de frecuencia');
xlabel('Frecuencia (Hz)');
ylabel('Potencia');

