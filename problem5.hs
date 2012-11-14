{-
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?

liczby 19 17 13 7 5 3 2 s± pierwsze a wiêc nasza liczba musi byæ podzielna przez ich iloczyn czyli 881790 
-}

dzielnik n = if (mod n 18 == 0) && (mod n 16 == 0) && (mod n 15 == 0) && (mod n 14 == 0)  && (mod n 12 == 0) && (mod n 11 == 0) && (mod n 10 == 0) && (mod n 9 == 0) && (mod n 8 == 0)  && (mod n 6 == 0) && (mod n 4 == 0) then n  else dzielnik (n + 881790)  
