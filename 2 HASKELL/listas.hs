lista :: [Integer] -> Integer
--x es el primer valor del arreglo, mientras que xs es el resto de valores del arreglo
lista (x:xs) = x

lista2:: [Integer] -> [Integer]
lista2 (x:xs) = xs

lista3 :: [Integer] -> Integer -> [Integer]
lista3 a b = b:a

lista4 :: [String] -> String -> [String]
lista4 a b = b:a 

--SE SUPONE DEBE CONCATENAR EL CARACTER CON EL STRING
lista5:: Char -> String -> String
lista5 a b = b:a
--La lista 5 no funciono

--NUMEROS DEL 1 AL 1000
lista6:: [Integer]
lista6 = [1..10]

--toma 3 de la lista 6
main = print(take 3 lista6)

--No muestra los primeros 3
main = print(drop 3 lista6)

--Suma todos los numeros de la lista 6
main = print(sum lista6)

--Multiplicacion de todos los numeros de la lista
main = print(product lista6)

--Imprimir la lista indefinidamente
main = print(cycle lista6)

fun1:: [Integer] -> Integer
fun1 [] = 0
fun1 (x:xs) = x + fun1 xs
main= print(fun1 [1,3,5])

--longitud del arreglo
-- _ indica que es una variable anonima
fun2:: [Integer] -> Integer
fun2 [] = 0
fun2 (_:xs)= 1 + fun2 xs
main= print(fun2 [1,9,5])

