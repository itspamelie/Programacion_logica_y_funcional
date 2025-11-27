%EXAMEN UNIDAD 3 Y 4
pertenece(joss, isis).
pertenece(joss, pil/i).
pertenece(joss, filecomp).
pertenece(joss, cal).
pertenece(cal, superbasic).
pertenece(joss,citran).
pertenece(joss,focal).
pertenece(focal,coke).
pertenece(joss,telcomp).
pertenece(telcomp,mumps).
pertenece(stringcomp,mumps).
pertenece(telcomp,logo).
%Valor de cada uno de los lenguajes
valor(joss,1).
valor(pil/i,2).
valor(filecomp,3).
valor(cal,3).
valor(superbasic,4).
valor(citran,5).
valor(focal,6).
valor(coke,7).
valor(telcomp,8).
valor(mumps,9).
valor(stringcomp,10).
valor(telcomp,11).


%¿Quién es el padre del padre de COKE?  (Imprime el valor; Valor 10 puntos)  
%pertenece(Y,coke).
%Y = focal.

%¿Es Logo hermano de MUMPS? (devolverá true o false; Valor 10 puntos) 
hermanito(X,Y):-pertenece(W,X),pertenece(W,Y).
%hermanito(logo,mumps).
%true .

%¿Es JOSS el padre del padre de SuperBasic? (devolverá true o false; Valor 10 puntos) 
%pertenece(joss,superbasic).
%false.

%Invente una regla. (Valor 10)  
%regla para conocer si tienen abuelo
abuelito(X,Y):-pertenece(Z,X),pertenece(Y,Z).
%abuelito(superbasic,Y).
%Y = joss.

%abuelito(coke,Y).
%Y = joss.

%abuelito(logo,Y).
%Y = joss.

%Invente una regla que utilice una expresión aritmética. (Valor 15)  
%suma el valor de 2 lenguajes y esa suma la eleva al cuadrado
fusion(X,Y,R):-valor(X,A),valor(Y,B),R is (A+B) ** 2.
%fusion(coke,mumps,R).
%R = 256.


%Invente una regla que utilice un comparador. (Valor 15)  
%compara entre 2 lenguajes cual tiene mejor valor. El valor se define en orden ascendente.
%considere el valor 1 es mejor que los otros y el valor 11 es el peor.
comparar(X,Y,Z):-valor(X,A),valor(Y,B),
(
    A > B -> Z ='X tiene menos valor.';
    A =:= B -> Z ='Ambos tienen el mismo valor';
    Z='Y tiene menos valor'
).
%comparar(coke,mumps,Z).
%Z = 'Y tiene menos valor'.

%comparar(mumps,coke,Z).
%Z = 'X tiene menos valor.'.

%comparar(filecomp,cal,Z).
%Z = 'Ambos tienen el mismo valor'.
