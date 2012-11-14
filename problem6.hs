{-The sum of the squares of the first ten natural numbers is,
1? + 2? + ... + 10? = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)? = 55? = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

-}


squaresum 0 = 0
squaresum n = n*n + squaresum (n-1)

sumsquare 0 = 0
sumsquare n = n + sumsquare(n - 1)
sumsquare2 n = (sumsquare n)^2

suma n = (sumsquare2 n - squaresum n)