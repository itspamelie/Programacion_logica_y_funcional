valioso(oro).
valioso(plata).
le_gusta(juan,maria).
tiene(juan,libro).
tiene(maria,libro).
% Diagrama
progenitor(clara,jose).
progenitor(tomas,jose).
progenitor(tomas,isabel).
progenitor(jose,ana).
progenitor(jose,patricia).
progenitor(patricia,jaime)

%CON CODIGO PONER QUE ISABEL ES TIA DE ANA
% progenitor(X,ana), progenitor(Y,X),progenitor(Y,Z).

% ES ANA TIA DE JAIME?
%Pensando que solo tenemos los datos de ana y jaime


%ES ANA TIA DE ISABEL?