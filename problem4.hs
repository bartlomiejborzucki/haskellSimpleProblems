{-
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.

Find the largest palindrome made from the product of two 3-digit numbers.

-}

utworzListe :: Integer -> [Integer]
utworzListe x = utworzListe' x [] where
      utworzListe' :: Integer -> [Integer] -> [Integer]
      utworzListe' 0 l = l
      utworzListe' i l = utworzListe' (i `div` 10) ((i `mod` 10) : l)




palindrom [] = True
palindrom x = reverse x == x


trojka = [a*b | a <- [100..999], b <- [100..999], palindrom (utworzListe (a*b)) == True ]

max' (x:xs)  = maxa x xs
maxa a [] = a
maxa a (x:xs) = if a > x then maxa a xs else maxa x xs 

trojkamax = max' trojka