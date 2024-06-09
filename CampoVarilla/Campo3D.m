% Definir el rango deseado en el eje X, el eje Y y el eje Z
x = -9:0.1:9; % Genera valores desde -9 hasta 9 con un paso de 0.1
y = zeros(size(x)); % Valores en el eje Y (constante igual a cero)
z = zeros(size(x)); % Valores en el eje Z (constante igual a cero)

% Graficar la línea recta en 3D
plot3(x, y, z, 'r-', 'LineWidth', 8); % 'r-' especifica una línea roja sólida

% Puedes personalizar el gráfico, como etiquetas de ejes y título
xlabel('Eje X');
ylabel('Eje Y');
zlabel('Eje Z');
title('Línea 3D');

% Ajustar los límites de los ejes para que se ajusten al rango deseado
xlim([-9, 9]);
ylim([-1, 1]);
zlim([-1, 1]); % Ajusta este límite de acuerdo a tus necesidades

% Agregar una cuadrícula
grid on;
