% Sea la recta en el espacio dada por las coordenadas de Plucker 
% L = (1; -1; 1; 0; 2; 2). Determinar los puntos del espacio por los que pasa.

clf;
clear;

L = [1, -1, 1, 0, 2, 2]

PlanoYZ = [1, 0, 0, 1]; % Plano con X = 0
PlanoXY = [0, 0, 1, 1]; % Plano con Z = 0
PlanoXZ = [0, 1, 0, 1]; % Plano con Y = 0

ML = ObtenerMatrizPlucker(L)

% Puntos de Corte con los planos
PuntoX = ML * PlanoYZ'
PuntoY = ML * PlanoXZ'
PuntoZ = ML * PlanoXY'
