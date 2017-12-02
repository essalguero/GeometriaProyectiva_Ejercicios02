% Realiza un programa .m en Octave que dadas 4 correspondencias calcule la 
% homografía correspondiente, y comprueba que para 
% xi =  {(1, 0, 1),(0, 1, 1),(0, 0, 1), (1, 1, 1)} y 
% x'i = {(2, 1, 1),(1, 2, 1),(-1, 1, 1),(1, 0, 1)} obtenemos la matriz
%H = [
%-3 2.5 -1
%-3 2 1
%-3 0.5 1]

mOri = [1, 0, 1; 0, 1, 1; 0, 0, 0; 1, 1, 1];
mCor = [2, 1, 1; 1, 2, 1; -1, 1, 1; 1, 0, 1];

H = GenerarHomografia(mOri, mCor)