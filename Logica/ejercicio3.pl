%SUMA
suma(X,Y, R) :- R is X +Y.
%10,2 resultado 12
%RESTA
resta(X,Y, R) :- R is X -Y.
%5, 2 resultado 3
%MULTIPLICACION
multiplicacion(X,Y, R) :- R is X *Y.
%5, 2 resultado 10
%DIVISION REAL
divreal(X,Y,R):- R is X/Y.
%10,2 resultado 5
%DIVISION ENTERA
diventera(X,Y,R):- R is X div Y.
%10,2 resultado 5
%RESTO DE LA DIVISION
restodiv(X,Y,R):- R is X mod Y.
%10,2 resultado 0
%X ELEVADO A Y
elevado(X,Y,R):- R is X ^ Y.
%,2,2 resultado 4
%NEGACION
negacion(X,R):- R is -X.
%2, resultado -2
%VALOR ABSOLUTO
absoluto(X,R):- R is abs(X).
%-2, resultado 2
%ARCO COSENO
arcos(X,R):- R is acos(X).
%0.2, resultado 1.369438406004566.
%ARCO SENO
arcoseno(X,R):- R is asin(X).
%0.2 resultado  0.2013579207903308.
%ARCO TANGENTE
arctan(X,R):- R is atan(X).
%0.2 RESULTADO  0.19739555984988078.
%COSENO
coseno(X,R):- R is cos(X).
%0.2 RESULTADO  0.9800665778412416.
%EXPONENCIAL
exponencial(X,R):- R is exp(X).
%2.0 RESULTADO  7.38905609893065.
%LOGARITMO NEPERIANO
lognep(X,R):- R is log(X)/log(2).
%0.2 RESULTADO  -2.321928094887362.
%LOGARITMO BASE 2
logaritmo(X,R):- R is log(X).
%0.2 RESULTADO -1.6094379124341003.
%SENO
seno(X,R):- R is sin(X).
%0.2 RESULTADO  0.19866933079506122.
%RAIZ CUADRADA
raiz(X,R):- R is sqrt(X).
%144 RESULTADO 12
%TANGENTE
tangente(X,R):- R is tan(X).
%0.2 resultado  0.2027100355086725.
%REDONDEO CON N DECIMALES
redondeo(X, N, R) :-
    % Multiplica X por 10^N, redondea al entero más cercano y luego divide por 10^N
    Factor is 10**N,
    Z is X * Factor,
    ZA is round(Z),
    R is ZA / Factor.
%redondeo(2.00002,2,R).
%R = 2.
%X MENOR QUE Y
menorX(X,Y):- X< Y.
%2,4 true
%X MAYOR QUE Y
mayorX(X,Y):- X > Y.
%2,4 FALSE
%X MENOR O IGUAL QUE Y
menoroigualX(X,Y):- X =< Y.
%2,4 TRUE
%X MAYOR O IGUAL QUE Y
mayoroigualX(X,Y):- X >= Y.
%2,4 FALSE
% X IGUAL QUE Y
igualX(X,Y):- X=Y.
%2,2 TRUE
%X DISTINTO QUE Y
distintoX(X,Y):- X\=Y.
%2,3 TRUE
%La expresión X es igual que la expresión Y
expresionIgual(X,Y):- X == Y.
%expresionIgual(juan,juan).
%true.
%La expresión X es distinta que la expresión Y
expresionDistinta(X,Y):- X\==Y.
%expresionDistinta(juan,juan).
%false.
%X es menor que Y
menorque(X,Y):-X@<Y.
%2,2 false
%X es mayor que Y
mayorque(X,Y):-X@>Y.
%2,2 false
%X es menor o igual que Y
menorIgualque(X,Y):-X@=<Y.
%2,2 true
%X es mayor o igual que Y
mayorIgualque(X,Y):-X@>=Y.
%2,2 true

