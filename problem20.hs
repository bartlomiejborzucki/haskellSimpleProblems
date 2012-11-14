{-
n! means n  (n  1)  ...  3  2  1

Find the sum of the digits in the number 100!
-}

silnia 0 = 1
silnia n = n * silnia (n - 1)

suma :: [Integer] -> Integer
suma [] = 0
suma (x:xs) = x + suma xs

--potega :: (Integer -> [Integer]) -> [Integer]
potega n = suma (utworzListe (silnia n))




utworzListe :: Integer -> [Integer]
utworzListe x = utworzListe' x [] where
      utworzListe' :: Integer -> [Integer] -> [Integer]
      utworzListe' 0 l = l
      utworzListe' i l = utworzListe' (i `div` 10) ((i `mod` 10) : l)
