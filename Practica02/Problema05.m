% Calcular el plano que pasa por los puntos 
% (1; 1; -1), (-9; 7; 3) y (2; 0; 5).

clf;
clear;

P1 = [1, 1, -1];
P2 = [-9, 7, 3];
P3 = [2, 0, 5];

% Calcular recta que pasa por P1 y P2
p1p2T = MultiplicarVectores([P1, 1], [P2, 1])
p2p1T = MultiplicarVectores([P2, 1], [P1, 1])
mL = p1p2T - p2p1T

% Obtener las coordenadas de Plucker
L = ObtenerPlucker(mL);

% Obtener L*
LInv = InvertirPlucker(L);

% Forma de matriz
mLInv = ObtenerMatrizPlucker(LInv)

%Calcular el plano
vectorPlano = mLInv * [P3, 1]';
vectorPlano = vectorPlano / 4


% Plano: 10x + 16y + 1z - 25