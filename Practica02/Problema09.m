 %Considera una c´amara situada en posicion estandar, mirando en diraccion 
%al eje z (positivo) y con la pantalla a una distancia igual a 2. Supongamos 
%ademas que de la pantalla solamente podemos ver a traves del cuadrado 
%formado por vertices (1, 1), (-1, 1), (-1, -1) y (1, -1).
%¿Que parte del plano x - z + 7 = 0 queda visible por la camara?

clf;
clear;

%Puntos del plano z = 2 donde esta el plano de la pantalla
P1 = [1, 1, 2, 1];
P2 = [-1, 1, 2, 1];
P3 = [-1, -1, 2, 1];
P4 = [1, -1, 2, 1];

%Punto donde esta la camara
P0 = [0, 0, 0, 1];

Plano = [1, 0, -1, 7];

% Calcular la interseccion de la recta que va desde (0,0,0) y pasa
%por los vertices de la ventana definida en el enunciado
ML1 = MultiplicarVectores(P0, P1) - MultiplicarVectores(P1, P0);
PInterseccion1 = ML1 * Plano';
PInterseccion1 = PInterseccion1 / PInterseccion1(4)

ML2 = MultiplicarVectores(P0, P2) - MultiplicarVectores(P2, P0);
PInterseccion2 = ML2 * Plano';
PInterseccion2 = PInterseccion2 / PInterseccion2(4)

ML3 = MultiplicarVectores(P0, P3) - MultiplicarVectores(P3, P0);
PInterseccion3 = ML3 * Plano';
PInterseccion3 = PInterseccion3 / PInterseccion3(4)

ML4 = MultiplicarVectores(P0, P4) - MultiplicarVectores(P4, P0);
PInterseccion4 = ML4 * Plano';
PInterseccion4 = PInterseccion4 / PInterseccion4(4)

