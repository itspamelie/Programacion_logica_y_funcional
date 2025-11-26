red(switch).
pertenece(switch,pc1).
pertenece(switch,pc2).
pertenece(switch,pc3).
pertenece(switch,pc4).
red(router).
pertenece(router,switch).
pertenece(switch,router).
pertenece(router,pc5).
pertenece(router,pc6).
pertenece(router,pc7).
pertenece(router,servidor).
velocidad(router,100).
velocidad(switch,1000).

%Muestre las PCs de la topología de estrella (red1).
%pertenece(switch,X).
%X = pc1 ;
%X = pc2 ;
%X = pc3 ;
%X = pc4.

%Desarrolle una regla que determine si un dispositivo pertenece a una red.
pertenecea(X,Z):-pertenece(Z,X),red(Z).
%¿Puede el S1 enviar ping a la pc2?
%NOTA> ESTA FUNCION SOLO DETECTA SI LOS DISPOSITIVOS PUEDEN CONECTARSE CON OTRA RED,
%NO CON LOS DE SU MISMA RED
ping2(X,Y):-pertenece(W,X),pertenece(W,Z),pertenece(Z,Y).
%Invente una regla.
%REGLA PARA ENCONTRAR LA VELOCIDAD DE UN DISPOSITIVO
encontrarvelocidad(X,Z):-pertenece(Y,X),red(Y),velocidad(Y,Z).
%Invente una regla que utilice una expresión aritmética.
%Convertir los MBPS A GBPS del switch y del router
convertiragigabit(X,Z):-velocidad(X,Y), Z is Y / 1000.
%Invente una regla que utilice un comparador.
%regla que compara la velocidad entre el switch y el router
comparar_velocidad(X,Y,Z):-velocidad(X,A),velocidad(Y,B),
(
    A > B -> Z ='La red 1 tiene una mayor velocidad.';
    A =:= B -> Z ='Ambos tienen la misma velocidad';
    Z='La red 2 tiene mayor velocidad.'
).
