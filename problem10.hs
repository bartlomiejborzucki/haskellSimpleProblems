{-
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
-}

primes2 :: [Integer]
primes2 = 2 : [n | n <- [3..2000000], all ( \p -> mod n p /= 0) (takeWhile (\p -> p * p <= n) primes2)]

primes :: [Integer]
primes = map head $ iterate (\(x:xs) -> [y | y <- xs, mod y x /= 0]) [2..]

sum1 [] = 0
sum1 (x:xs) = x + sum xs

sum2 = sum1 primes2