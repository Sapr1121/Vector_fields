% Definir el rango de coordenadas x e y
x = linspace(-5, 5, 20);
y = linspace(-5, 5, 20);

% Crear una malla de coordenadas x e y
[xmesh, ymesh] = meshgrid(x, y);

% Calcular los componentes del campo vectorial
umesh = xmesh;
vmesh = 2 * ymesh;

% Crear el gráfico de campo vectorial
quiver(xmesh, ymesh, umesh, vmesh, 0.5);

% Etiquetas de ejes
xlabel('Eje X');
ylabel('Eje Y');

% Título
title('Campo Vectorial (x ax + 2y ay) V/m');
