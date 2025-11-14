%Ejercicio 2
descendiente(hominoidea,hominidea).
descendiente(hominoidea,hylobatidae).
descendiente(hominidea,ponginae).
descendiente(hominidea,homininae).
descendiente(ponginae,pongo).
descendiente(pongo,orangutan).
descendiente(hylobatidae,hylobates).
descendiente(hylobates,gibbon).
descendiente(homininae,gorillini).
descendiente(gorillini,gorilla).
descendiente(gorilla,gorilla).
descendiente(homininae,hominini).
descendiente(hominini,homo).
descendiente(hominini,pan).
descendiente(homo,human).
descendiente(pan,bonobo).
descendiente(pan,chimpanzee).

categoria(superfamily,hominoidea).
categoria(family,hominidea).
categoria(family,hylobatidae).
categoria(subfamily,homininae).
categoria(subfamily,ponginae).
categoria(tribe,hominini).
categoria(tribe,gorillini).
categoria(genus,homo).
categoria(genus,pan).
categoria(genus,gorilla).
categoria(genus,pongo).
categoria(genus,hylobates).

%------------------------------------------------------------------------------------------
%1- Es el gorila descendiente de hominini?
%descendiente(hominini,gorilla).
%false.
%------------------------------------------------------------------------------------------
%2- ¿Es el Homo hermano del gorila?
% descendiente(X,homo),descenciente(X,gorilla).
%------------------------------------------------------------------------------------------
%3- ¿Son el Homo y el Gorilla de la misma subfamilia?
subfamilia(X,Y,Z):-descendiente(A,X),descendiente(B,Y),categoria(Z,A),categoria(Z,B).
%------------------------------------------------------------------------------------------
%4- ¿Tiene Hominini la misma familia que Pongo?
family(X,Y,Z):-
    descendiente(A,X),
    descendiente(B,Y),
    descendiente(C,A),
    descendiente(D,B),
    categoria(Z,C),
    categoria(Z,D).
%------------------------------------------------------------------------------------------
%5- ¿Quiénes son los descendientes directos de una tribu?
descendientedirecto(X,Y):-descendiente(A,X),categoria(Y,A).
%------------------------------------------------------------------------------------------
%6- ¿Cuál es la superfamilia a la que pertenece Hylobates?
%descendiente(X,hylobates),descendiente(Y,X).
%------------------------------------------------------------------------------------------
%7- ¿Qué géneros comparten la misma subfamilia con Pan?
subfamiliageneros(X,Y,Z):-descendiente(A,X),descendiente(B,Y),descendiente(C,A),descendiente(D,B),categoria(Z,C),categoria(Z,D).
%------------------------------------------------------------------------------------------
%8- ¿Cuál es el ancestro común más cercano entre Homo y Gorilla?
%descendiente(X,homo),descendiente(Y,gorilla),descendiente(Z,X),descendiente(Z,Y).
%------------------------------------------------------------------------------------------
%9- ¿Es el orangután un homínido?
hominido(X,B):-descendiente(A,X),descendiente(B,A),categoria(tribe,B).
%------------------------------------------------------------------------------------------
%10- ¿Cuáles son todas las especies que pertenecen a la familia Hominidae?
%no supe a cual se referia, asi que puse a homininae
%descendiente(homininae,X),descendiente(X,Y),descendiente(Y,Z).
%------------------------------------------------------------------------------------------
%11- ¿Qué géneros son hermanos taxonómicos de Homo?
%descendiente(X,homo),descendiente(X,Z).
%------------------------------------------------------------------------------------------
%12 -¿Comparten Homo y Hylobates la misma familia?
mismafamily(X,Y):-descendiente(A,X),descendiente(B,A),descendiente(C,B),descendiente(D,Y),D=C,categoria(family,D).
%------------------------------------------------------------------------------------------
%13- ¿Cuáles son los descendientes directos de la subfamilia Homininae?
%descendiente(homininae,X).
%------------------------------------------------------------------------------------------
%14- ¿Qué géneros están bajo la familia Hominidae?
%%descendiente(homininae,X),descendiente(X,Y),descendiente(Y,Z).
%------------------------------------------------------------------------------------------
%15- ¿Cuál es la ruta taxonómica completa desde Homo hasta la superfamilia?
% descendiente(X,homo),descendiente(Y,X),descendiente(Z,Y),descendiente(W,Z).
%------------------------------------------------------------------------------------------
