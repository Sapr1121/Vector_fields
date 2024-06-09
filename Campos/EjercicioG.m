% Definir el rango de coordenadas x e y
x = linspace(-5, 5, 20);
y = linspace(-5, 5, 20);

% Crear una malla de coordenadas x e y
[xmesh, ymesh] = meshgrid(x, y);

% Calcular los componentes del campo vectorial
umesh = (xmesh/2 + 2*ymesh);
vmesh = 2*xmesh;

% Crear el gráfico de campo vectorial
quiver(xmesh, ymesh, umesh, vmesh, 0.5);

% Etiquetas de ejes
xlabel('Eje X');
ylabel('Eje Y');

% Título
title('Campo Vectorial ((x/2 + 2y) ax + 2x ay) V/m');