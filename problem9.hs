{-
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a2 + b2 = c2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
-}

f n = [(a,b,c) | a <- [1..n], b <- [1..n], c <- [1..n] , a^2+b^2 == c^2, a + b + c == 1000]