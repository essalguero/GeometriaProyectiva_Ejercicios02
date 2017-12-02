% Solución al primer ejercicio
% Calcular la interseccion de las rectas 3x - 2y = 5 y 3x - 2y = -2

clf;
clear;

v1 = [3, -2, -5];
v2 = [3, -2, -2];

result = cross(v2, v1)

% result = 6   9   0 -> se cortan en el infinito