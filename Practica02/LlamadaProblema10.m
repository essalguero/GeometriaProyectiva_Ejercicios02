
clf;
clear;

mOriginales = [1, 0, 1; 0, 1, 1; 0, 0, 1; 1, 1, 1]
mCorrespondencias = [2, 1, 1; 1, 2, 1; -1, 1, 1; 1, 0, 1]

H = GenerarHomografia(mOriginales, mCorrespondencias)


Comprobacion = (H * mOriginales')'
     