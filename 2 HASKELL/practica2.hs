--funcion 1
promedio :: Double -> Double -> Double -> Double -> Double
promedio a b c d = (a+b+c+d)/4
--funcion 2
sumaMonedas :: Integer -> Integer -> Integer -> Integer -> Integer
sumaMonedas a b c d = a+(b*5)+(c*10)+(d*50)
--funcion 3 
volumen :: Double -> Double
volumen x = (4/3) * pi * (x ^ 3)
--funcion 4
numerosIguales :: Double -> Double -> Double -> Bool
numerosIguales a b c = if a == b && b == c then True
else False
--funcion 5 
numerosDiferentes :: Double -> Double -> Double -> Bool
numerosDiferentes a b c = if a == b && b == c then False
else True
--funcion 6
descuento :: Double -> Double
descuento x | x > 1000 = x * 0.6
            | x > 500  = x * 0.7
            | x > 100    = x * 0.9
            | otherwise = x
--funcion 7
ultCifra :: Integer -> Integer
ultCifra x = x `rem` 10

menu :: IO()
menu = do
    putStrLn("=== MENU ==")
    putStrLn("CALCULA LO QUE GUSTES:)")
    putStrLn("1 Promedio de 4 numeros") --listo
    putStrLn("2 Sumar monedas") --listo
    putStrLn("3 Volumen de una esfera") 
    putStrLn("4 Verifica si a,b y c son iguales") 
    putStrLn("5 Verifica si a,b y c son diferentes") 
    putStrLn("6 Descuento de una compra")
    putStrLn("7 Ultima cifra de un numero")
    
    opcion <- getLine
    case opcion of
      "1" -> do
          putStrLn("Introduce el valor de a")
          n1 <- getLine
          let a = read n1 :: Double
          putStrLn("Introduce el valor de b")
          n2 <- getLine
          let b = read n2 :: Double
          putStrLn("Introduce el valor de c")
          n3 <- getLine
          let c = read n3 :: Double
          putStrLn("Introduce el valor de c")
          n4 <- getLine
          let d = read n4 :: Double
          putStrLn("El promedio es igual a  " ++ show (promedio a b c d))
          menu
      "2" -> do
          putStrLn("Cada moneda tiene su valor: a=$1, b=$5, c=$10 y d=$50")
          putStrLn("Cuantas monedas tienes de a")
          n1 <- getLine
          let a = read n1 :: Integer
          putStrLn("Cuantas monedas tienes de b")
          n2 <- getLine
          let b = read n2 :: Integer 
          putStrLn("Cuantas monedas tienes de b")
          n3 <- getLine 
          let c = read n3 :: Integer
          putStrLn("Cuantas monedas tienes de d")
          n4 <- getLine
          let d = read n4 :: Integer
          putStrLn("Tienes $" ++ show (sumaMonedas a b c d) ++ " pesos")
          menu
      "3" -> do
          putStrLn("Introduce el valor del radio de tu circunferencia")
          n1 <- getLine
          let x = read n1 :: Double
          putStrLn("El volumen de tu circunferencia es igual a "++ show(volumen x))
          menu
      "4" -> do
          putStrLn("Introduce el valor de a")
          n1 <- getLine 
          let a = read n1 :: Double
          putStrLn("Introduce el valor de b")
          n2 <- getLine 
          let b = read n2 :: Double
          putStrLn("Introduce el valor de c")
          n3 <- getLine 
          let c = read n3 :: Double
          putStrLn(if numerosIguales a b c  then "Tus numeros son iguales"
          else "Tus numeros no son iguales")
          menu
      "5" -> do
          putStrLn("Introduce el valor de a")
          n1 <- getLine 
          let a = read n1 :: Double
          putStrLn("Introduce el valor de b")
          n2 <- getLine 
          let b = read n2 :: Double
          putStrLn("Introduce el valor de c")
          n3 <- getLine 
          let c = read n3 :: Double
          putStrLn(if numerosDiferentes a b c  then "Tus numeros son diferentes"
          else "Tus numeros no son diferentes")
          menu
      "6" -> do
          putStrLn("Introduce el monto de tu compra")
          n1 <- getLine 
          let x = read n1 :: Double
          putStrLn("Total a pagar: " ++ show(descuento x))
          menu
      "7" -> do
          putStrLn("Introduce tu numero")
          n1 <- getLine 
          let x = read n1 :: Integer
          putStrLn("La ultima cifra de tu numero es "++ show(ultCifra x))
          menu
     

main :: IO ()
main = menu