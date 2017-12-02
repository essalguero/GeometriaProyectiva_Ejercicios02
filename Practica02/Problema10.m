% Calcula el plano PI dfinido por el punto (1; 1; -3) la recta dada por 
% las ecuaciones x+y = 1 y x-z = 0. Calcula la intersección de la recta que 
% pasa por los puntos (1; 0; -1) y (-3; -2; -3) con PI.

P1 = [1, 1, -3];
V1 = [1, 1, 0, -1];
V2 = [1, 0, -1, 0];

P2 = [1, 0, -1];
P3 = [-3, -2, -3];

MLInv = MultiplicarVectores(V1, V2) - MultiplicarVectores(V2, V1);
LInv = ObtenerPlucker(MLInv);

L = InvertirPlucker(LInv);

ML = ObtenerMatrizPlucker(L);

Plano = ML * [P1, 1]'

%Plano = -2x -y -2z -3 = 0


MLrecta = MultiplicarVectores([P2, 1], [P3, 1]) - MultiplicarVectores([P3, 1], [P2, 1]);

Punto = MLrecta * Plano;

Punto = Punto / 2