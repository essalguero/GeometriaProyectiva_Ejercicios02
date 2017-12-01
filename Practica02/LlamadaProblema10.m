
clf;
clear;

mOriginales = [1, 0, 1; 0, 1, 1; 0, 0, 1; 1, 1, 1];
mCorrespondencias = [2, 1, 1; 1, 2, 1; -1, 1, 1; 1, 0, 1];

A = GenerarHomografia(mOriginales, mCorrespondencias);


b = [2; 1; 1; 2; -1; 1; 1; 0];


h = A \ b;


H = [h(1, 1), h(2, 1), h(3, 1); 
     h(4, 1), h(5, 1), h(6, 1); 
     h(7, 1), h(8, 1), 1]


Comprobacion = H * mOriginales'
     