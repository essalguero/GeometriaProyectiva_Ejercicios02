% Halla la recta que pasa por los puntos (1; 1; 0) y (-1; 0; 1), tanto 
% en coordenadas de Plucker como en sus coordenadas Euclídeas.

P1 = [1, 1, 0];
P2 = [-1, 0, 1];

ML = MultiplicarVectores([P1, 1], [P2, 1]) - MultiplicarVectores([P2, 1], [P1, 1])

L = ObtenerPlucker(ML)

% L = (1:1:2:1:-1:-1)

%                                          x + y + 1 = 0
% En coordenadas Euclideas la recta r = {                 } Por la dualidad Punto plano
%                                         -x + z + 1 = 0