--FUNCIONES
absoluto x = abs x
redondeo:: Double -> Integer
redondeo x = ceiling x
siguiente:: Double -> Double
siguiente x = succ x
menor:: Double-> Double -> Double
menor x y = min x y
mayor:: Double-> Double -> Double
mayor x y = max x y
division:: Integer -> Integer -> Integer 
division x y = div x y --DIVISION ENTERA
modulo:: Integer -> Integer -> Integer
modulo x y = x `mod` y
par:: Integer -> Bool 
par x = even x
numeroMayorEntero x = floor x
maximoComunDivisor:: Integer -> Integer -> Integer
maximoComunDivisor x y = gcd x y
negacionBoleana:: Bool -> Bool
negacionBoleana x = not x
non:: Integer -> Bool 
non x = odd x
positivoNegativo:: Integer -> Integer
positivoNegativo x = signum x
segundoElemento:: Integer -> Integer -> Integer
segundoElemento x y = snd (x,y)

menu :: IO()
menu = do
    putStrLn("=== MENU ==")
    putStrLn("CALCULA LO QUE GUSTES:)")
    putStrLn("1 VALOR ABSOLUTO DE X") --listo
    putStrLn("2 REDONDEO DE X") --listo
    putStrLn("3 VALOR SIGUIENTE DE X") --listo
    putStrLn("4 MENOR DE DOS NUMEROS") --listo
    putStrLn("5 MAYOR DE DOS NUMEROS") --listo
    putStrLn("6 DIVISION ENTERA DE DOS NUMEROS") --listo
    putStrLn("7 MODULO DE DOS NUMEROS") --listo
    putStrLn("8 CALCULA SI ES PAR") --listo
    putStrLn("9 NUMERO ENTERO NO MAYOR QUE X") --listo
    putStrLn("10 MAXIMO COMUN DIVISOR") --listo
    putStrLn("11 NEGACIÓN DE BOOLEANA")
    putStrLn("12 VERIFICA SI ES NUMERO NON")
    putStrLn("13 DEVUELVE 1 SI ES POSITIVO Y -1 SI ES NEGATIVO")
    putStrLn("14 RETORNA EL SEGUNDO ELEMENTO")
    
    opcion <- getLine
    case opcion of
      "1" -> do
          putStrLn("Introduce el valor de X (entero)")
          n1 <- getLine
          let x = read n1 :: Integer
          putStrLn("El valor absoluto de X es " ++ show (absoluto x))
          menu
      "2" -> do
          putStrLn("Introduce el valor de X (con decimales)")
          n1 <- getLine
          let x = read n1 :: Double
          putStrLn("El redondeo de X es " ++ show (redondeo x))
          menu
      "3" -> do
          putStrLn("Introduce el valor de X")
          n1 <- getLine
          let x = read n1 :: Double
          putStrLn("El numero que sigue de X es " ++ show (siguiente x))
          menu
      "4" -> do
          putStrLn("Introduce el primer numero")
          n1 <- getLine
          let x = read n1 :: Double
          putStrLn("Introduce el segundo numero")
          n2 <- getLine
          let y = read n2 :: Double
          putStrLn("El menor de ambos es " ++ show (menor x y))
          menu
      "5" -> do
          putStrLn("Introduce el primer numero")
          n1 <- getLine
          let x = read n1 :: Double
          putStrLn("Introduce el segundo numero")
          n2 <- getLine
          let y = read n2 :: Double
          putStrLn("El mayor de ambos es " ++ show (mayor x y))
          menu
      "6" -> do
          putStrLn("Introduce el primer numero (ENTERO)")
          n1 <- getLine
          let x = read n1 :: Integer
          putStrLn("Introduce el segundo numero (ENTERO)")
          n2 <- getLine
          let y = read n2 :: Integer
          putStrLn("El resultado es " ++ show (division x y))
          menu
      "7" -> do
          putStrLn("Introduce el primer numero entero")
          n1 <- getLine
          let x = read n1 :: Integer
          putStrLn("Introduce el segundo numero entero")
          n2 <- getLine
          let y = read n2 :: Integer
          putStrLn("El modulo es " ++ show (modulo x y))
          menu
      "8" -> do
          putStrLn("Introduce el valor de x")
          n1 <- getLine
          let x = read n1 :: Integer
          putStrLn(if par x  then "Es par"
          else "No es par, por tanto es non")
          menu
      "9" -> do
          putStrLn("Introduce el valor de x")
          n1 <- getLine
          let x = read n1 :: Double
          putStrLn("El numero mayor entero es " ++ show(numeroMayorEntero x))
          menu    
      "10" -> do
          putStrLn("Introduce el valor de x")
          n1 <- getLine
          let x = read n1 :: Integer
          putStrLn("Introduce el valor de y")
          n2 <- getLine
          let y = read n2 :: Integer
          putStrLn("El maximo comun divisor es " ++show (maximoComunDivisor x y))
          menu    
      "11" -> do
          putStrLn("Introduce True o False")
          n1 <- getLine
          let x = read n1 :: Bool
          putStrLn("La negacion boleana es " ++show(negacionBoleana x))
          menu  
      "12" -> do
          putStrLn("Introduce el valor de x")
          n1 <- getLine
          let x = read n1 :: Integer
          putStrLn(if non x  then "Es non"
          else "No es non, por tanto es par")
          menu
      "13" -> do
          putStrLn("Introduce el valor de x")
          n1 <- getLine
          let x = read n1 :: Integer
          putStrLn(if positivoNegativo x == 1  then "1, por tanto Positivo"
          else "-1, por tanto Negativo")  
      "14" -> do
          putStrLn("Introduce el valor de x")
          n1 <- getLine
          let x = read n1 :: Integer
          putStrLn("Introduce el valor de y")
          n2 <- getLine
          let y = read n2 :: Integer
          putStrLn("El segundo elemento de x y y es " ++show (segundoElemento x y))
          

main :: IO ()
main = menu