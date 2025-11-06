jefe(mark,sheryl).
jefe(sheryl,david).
jefe(sheryl,mike).
jefe(sheryl,timothy).
jefe(sheryl,elliot).
jefe(sheryl,lori).
jefe(elliot,rebecca).
jefe(elliot,heather).

%¿Quién es el jefe del Rebecca?
%jefe(X,rebecca).
%X=elliot

%¿Es jefe Mark del jefe de Rebecca?
% jefe(X,rebecca),jefe(Y,X), jefe(Z,Y).
% Donde X=Jefe de rebecca
% Y=jefe del jefe de rebecca
% Z=jefe del jefe del jefe de rebecca

%¿Es Lori jefe de alguien?
%jefe(lori,X).
%falso

%Mostrar empleados del jefe de Heather
%jefe(X,heather),jefe(X,Z).
%X es Elliot (el jefe)
%Z es rebecca (su otra empleada)

%¿Es Timothy jefe de Rebecca?
%jefe(timothy,rebecca).
%FALSOO

%Mostrar compañeros de nivel de Mike
%jefe(X,mike),jefe(X,Y).
%elliot,lori,timothy,mike,david

%¿Es el jefe de Rebeca compañero de nivel de David?
% jefe(X,rebecca),jefe(Y,X),jefe(Y,Z).
%X = elliot,
%Y = sheryl,
%Z = david ;
%sip

%¿Es compañero de nivel Mike de Lori?
%jefe(X,mike),jefe(X,Y).
%X = sheryl,
%Y = lori.
%sison