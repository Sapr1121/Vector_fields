

% Definir las constantes y variables
k = 8.99e9;  % Constante de Coulomb
q = 500e-6;  % Carga
x = linspace(-8, 8, 30);
y = linspace(-3, 3, 30);
z = linspace(-3, 3, 30);

% Crear una malla de coordenadas x, y, y z
[xmesh, ymesh, zmesh] = meshgrid(x, y, z);

% Calcular los componentes del campo vectorial en x, y, y z
umesh = k * ((q / 0.18) * (1 ./ sqrt((xmesh - 0.09).^2 + ymesh.^2 + zmesh.^2) - 1 ./ sqrt((xmesh + 0.09).^2 + ymesh.^2 + zmesh.^2)));
vmesh = k * (q / 0.18) * (-ymesh .* (xmesh - 0.09) ./ ((ymesh.^2 + zmesh.^2) .* sqrt(ymesh.^2 + zmesh.^2 + (xmesh - 0.09).^2)) - (-ymesh .* (xmesh + 0.09) ./ ((ymesh.^2 + zmesh.^2) .* sqrt(ymesh.^2 + zmesh.^2 + (xmesh + 0.09).^2))));
wmesh = k * (q / 0.18) * (-zmesh .* (xmesh - 0.09) ./ ((ymesh.^2 + zmesh.^2) .* sqrt(ymesh.^2 + zmesh.^2 + (xmesh - 0.09).^2)) - (-zmesh .* (xmesh + 0.09) ./ ((ymesh.^2 + zmesh.^2) .* sqrt(ymesh.^2 + zmesh.^2 + (xmesh + 0.09).^2))));

% Crear el gráfico de campo vectorial en 3D
quiver3(xmesh, ymesh, zmesh, umesh, vmesh, wmesh, 20,'AutoScale', 'on');

% Etiquetas de ejes
xlabel('Eje X');
ylabel('Eje Y');
zlabel('Eje Z');

% Título
title('Campo Vectorial en 3D');

% Ajustar la vista del gráfico
view(3);  % Vista en 3D


hold on;

% Definir las variables para la segunda gráfica
x2 = -9:0.1:9; % Eje X
y2 = zeros(size(x2)); % Eje Y (constante igual a cero)
z2 = zeros(size(x2)); % Eje Z (constante igual a cero)

% Graficar la línea recta en 3D
plot3(x2, y2, z2, 'r-', 'LineWidth', 8); % 'r-' especifica una línea roja sólida

% Ajustar los límites de los ejes para que se ajusten al rango deseado
xlim([-9, 9]);
ylim([-1, 1]);
zlim([-1, 1]); % Ajusta este límite de acuerdo a tus necesidades

% Agregar una cuadrícula
grid on;
