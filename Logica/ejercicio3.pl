%SUMA
suma(X,Y, R) :- R is X +Y.
%RESTA
resta(X,Y, R) :- R is X -Y.
%MULTIPLICACION
multiplicacion(X,Y, R) :- R is X *Y.
%DIVISION REAL
divreal(X,Y,R):- R is X/Y.
%DIVISION ENTERA
diventera(X,Y,R):- R is X div Y.
%RESTO DE LA DIVISION
restodiv(X,Y,R):- R is X mod Y.
%X ELEVADO A Y
elevado(X,Y,R):- R is X ^ Y.
%NEGACION
negacion(X,R):- R is -X.
%VALOR ABSOLUTO
absoluto(X,R):- R is abs(X).
%ARCO COSENO
arcos(X,R):- R is acos(X).
%ARCO SENO
arcoseno(X,R):- R is asin(X).
%ARCO TANGENTE
arctan(X,R):- R is atan(X).
%COSENO
coseno(X,R):- R is cos(X).
%EXPONENCIAL
exponencial(X,R):- R is exp(X).
%LOGARITMO NEPERIANO
lognep(X,R):- R is log(X)/log(2).
%LOGARITMO BASE 2
logaritmo(X,R):- R is log(X).
%SENO
seno(X,R):- R is sin(X).
%RAIZ CUADRADA
raiz(X,R):- R is sqrt(X).
%TANGENTE
tangente(X,R):- R is tan(X).
%REDONDEO CON N DECIMALES
redondeo(X, N, R) :-
    % Multiplica X por 10^N, redondea al entero más cercano y luego divide por 10^N
    Factor is 10**N,
    Z is X * Factor,
    ZA is round(Z),
    R is ZA / Factor.
%X MENOR QUE Y
menorX(X,Y):- X< Y.
%X MAYOR QUE Y
mayorX(X,Y):- X > Y.
%X MENOR O IGUAL QUE Y
menoroigualX(X,Y):- X =< Y.
%X MAYOR O IGUAL QUE Y
mayoroigualX(X,Y):- X >= Y.
% X IGUAL QUE Y
igualX(X,Y):- X=Y.
%X DISTINTO QUE Y
distintoX(X,Y):- X\=Y.
%La expresión X es igual que la expresión Y
expresionIgual(X,Y):- X == Y.
%La expresión X es distinta que la expresión Y
expresionDistinta(X,Y):- X\==Y.
%X es menor que Y
menorque(X,Y):-X@<Y.
%X es mayor que Y
mayorque(X,Y):-X@>Y.
%X es menor o igual que Y
menorIgualque(X,Y):-X@=<Y.
%X es mayor o igual que Y
mayorIgualque(X,Y):-X@>=Y.

