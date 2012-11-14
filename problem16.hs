--potega ::
{-
215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 21000?
-}


suma :: [Integer] -> Integer
suma [] = 0
suma (x:xs) = x + suma xs

--potega :: (Integer -> [Integer]) -> [Integer]
potega n = suma (utworzListe (2^n))


utworzListe :: Integer -> [Integer]
utworzListe x = utworzListe' x [] where
      utworzListe' :: Integer -> [Integer] -> [Integer]
      utworzListe' 0 l = l
      utworzListe' i l = utworzListe' (i `div` 10) ((i `mod` 10) : l)

