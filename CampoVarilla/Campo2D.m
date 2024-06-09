% Definir el rango deseado
x1 = -9:0.1:9; % Genera valores desde -9 hasta 9 con un paso de 0.1
y1 = zeros(size(x1)); % Esta será una constante igual a cero en todo el rango

%constante de Coulomb 8.99*10^9
k = 8.99*1000000000
k2= 899e9
%carga 500uC = 500 * 10^-6
q = 500*0.000001
q2=500e-6

%variable auxiliar
aux = (k*q)/18


% Definir el rango de coordenadas x e y
x = linspace(-10, 10, 20);
y = linspace(-10, 10, 20);

% Crear una malla de coordenadas x e y
[xmesh, ymesh] = meshgrid(x, y);

% Calcular los componentes del campo vectorial
umesh = aux * ((1 ./ sqrt((xmesh - 0.09).^2 + ymesh.^2)) - (1 ./ sqrt((xmesh + 0.09).^2 + ymesh.^2)));
vmesh = -aux * (((xmesh - 0.09) ./ (ymesh .* sqrt((xmesh - 0.09).^2 + ymesh.^2))) - ((xmesh + 0.09) ./ (ymesh .* sqrt((xmesh + 0.09).^2 + ymesh.^2))));



% Graficar la constante
plot(x1, y1, 'r-', 'LineWidth', 4);

% Crear el gráfico de campo vectorial con escala reducida
hold on; % Esto permite superponer ambas representaciones
quiver(xmesh, ymesh, umesh, vmesh, 5, 'AutoScale', 'on','Color', 'b');

% Etiquetas de ejes
xlabel('Eje X');
ylabel('Eje Y');

% Título
title('Varilla en 2D');


% Ajustar los límites de los ejes para que se ajusten al rango deseado
xlim([-10, 10]);
ylim([-5,5 ]); % Ajusta este límite de acuerdo a tu constante


grid on;