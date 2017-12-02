% Determina la interseccioon L de los planos z - y = 1 y z - y = -1. ¿La 
% interseccion esta contenida en el plano del infinito? ¿Por qué? ¿Cómo son 
% las coordenadas de los puntos de la recta L?

clf;
clear;

v1 = [0, -1, 1, -1];
v2 = [0, -1, 1, 1];

PInf = [1, 1, 1, 0];

L1 = MultiplicarVectores(v1, v2)
L2 = MultiplicarVectores(v2, v1)

Lt = L1 - L2;

LInv = [Lt(1, 2), Lt(1, 3) Lt(1, 4), Lt(2, 3), Lt(4, 2), Lt(4, 2)]

%L* pertenece al plano del infinito

m = ObtenerMatrizPlucker(LInv);

P = m * PInf'


% P = (0, 0, 0, 0) porque el la recta esta incluida en el plano del infinito


% La última coordenada vale 0