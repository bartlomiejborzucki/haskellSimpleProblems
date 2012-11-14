-- Dwa sposoby wypisywania liczb pierwszych 

primes :: [Integer]
primes = map head $ iterate (\(x:xs) -> [y | y <- xs, mod y x /= 0]) [2..]

primes2 :: [Integer]
primes2 = 2 : [n | n <- [3..], all ( \p -> mod n p /= 0) (takeWhile (\p -> p * p <= n) primes2)]

