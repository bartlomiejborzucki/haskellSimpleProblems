{-
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10001st prime number?


-}



primes2 :: [Integer]
primes2 = 2 : [n | n <- [3..1000000], all ( \p -> mod n p /= 0) (takeWhile (\p -> p * p <= n) primes2)]


licznik2 = primes2 !! 10000