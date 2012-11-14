{-
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

-}

primes2 :: [Integer]
primes2 = 2 : [n | n <- [3..775146], all ( \p -> mod n p /= 0) (takeWhile (\p -> p * p <= n) primes2)]

dzielnik [] = 0
dzielnik (x:xs) = if (mod 600851475143 x) == 0 then x else dzielnik xs

dzielnik' = dzielnik (reverse primes2)