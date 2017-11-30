% Determina la interseccioon L de los planos z - y = 1 y z - y = -1. ¿La 
% interseccion esta contenida en el plano del infinito? ¿Por qué? ¿Còmo son 
% las coordenadas de los puntos de la recta L?

clf;
clear;

v1 = [0, -1, 1, -1]
v2 = [0, -1, 1, 1]

L1 = v1.*v2'
L2 = v2.*v1'

Lt = L1 - L2

L = [Lt(1, 2), Lt(1, 3) Lt(1, 4), Lt(2, 3), Lt(4, 2), Lt(4, 2)]
