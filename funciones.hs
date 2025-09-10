sumar :: Integer -> Integer -> Integer
sumar x y=x+y

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)

menu :: IO()
menu = do
   putStrLn("=== MENU ==")
   putStrLn("Elige que quieres hacer")
   putStrLn("1 FACTORIAL") 
   opcion <- getLine
   case opcion of 
    "1" -> do
         putStrLn("Introduce el numero")
         n1 <- getLine
         let x = read n1 :: Integer
         putStrLn("El resultado es "++ show(factorial x)
   case opcion of 
   "2" -> do
         putStrLn("ADIOS ")
    _ -> do 
         putStrLn("OPCION NO VALIDA ")
         menu


--Public static void
main :: IO ()
main = menu

--cd 2_haskell
--ghci
-- :load funciones.hs