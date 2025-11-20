%Comparar el area de un circulo
area_circulo(Radio,Area):- Area is pi * Radio **2 .
comparar_area(10,12, Resultado).
comparar_area(Radio,Limite,Resultado):-
area_circulo(Radio,Area),
(Area > Limite -> Resultado ='Mayor';
Area =:= Limite -> Resultado ='Igual';
Resultado ='Menor'
).
%Comparar perímetro de un cuadrado
comparar_perimetro(Lado,Limite,Resultado):-
Perimetro is Lado * 4,
(Perimetro > Limite -> Resultado='Mayor';
Perimetro =:= Limite -> Resultado ='Igual';
Resultado = 'Menor'
).
%Verificar si el número es positivo, negativo o Cero
comparar_numero(Numero,Resultado):-
(Numero >= 0 -> Resultado='Positivo';
Resultado='Negativo'
).
%Comparar la raíz cuadrada con un valor
comparar_raiz(X,Y,Resultado):- Raiz is sqrt(X),
(Raiz < Y -> Resultado='Menor';
Raiz =:= Y -> Resultado ='Igual';
Resultado='Mayor'
).
%Calcular el área de un triángulo y verificar si es mayor que 50
area_triangulo(Base,Altura,Resultado):- Area is (Base*Altura)/2,
(Area > 50 -> Resultado='Mayor';
Area =:= 50 -> Resultado='Igual';
Resultado='Menor'
).
%Verificar si el número es par o impar
paroimpar(X,Resultado):- Numero is X mod 2,
(Numero =:= 0 -> Resultado='Par';
Resultado='Impar'
).
%Comparar el logaritmo natural
comparar_log(X,Logaritmo,Resultado):- Log is log(X),
(Log > Logaritmo -> Resultado='Menor';
Log =:= Logaritmo -> Resultado ='Igual';
Resultado = 'Mayor'
).
%Calcular la potencia y verificar si supera 100
comparar_potencia(X,Potencia,Resultado):- Calculo is X ** Potencia,
(
    Calculo > 100 -> Resultado ='Mayor';
    Calculo =:= 100 -> Resultado ='Igual';
    Resultado='Menor'
).

