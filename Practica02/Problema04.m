% ¿Cuál es la intersección del plano 2x - y - z - 1 = 0 con el plano del 
% infinito? Dar su ecuación en las coordenadas del plano del infinito.

v1 = [2 -1 -1 -1];
PlanoInf = [1 1 1 0];


MLInv = MultiplicarVectores(v1, PlanoInf) - MultiplicarVectores(PlanoInf, v1)

r = ObtenerMatrizPlucker(InvertirPlucker(ObtenerPlucker(MLInv))) * PlanoInf'

% r = (0, 0, 0, 0) Porque esta contenida en el plano del infinito