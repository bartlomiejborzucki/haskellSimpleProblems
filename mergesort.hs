mergesort::(a->a->Bool)->[a]->[a]
mergesort f x
   |(length x) <= 1 = x
   |otherwise = merge f xs1 xs2 where
      k  =  div (length x)   2;
      xs1=mergesort f (take k x)
      xs2=mergesort f (drop k x)
merge::(a->a->Bool)->[a]->[a]->[a]
merge f x y
   | (length y) == 0 = x
   | (length x) == 0 = y
   | otherwise = if f (head y) (head x) then (head x):merge f (tail x) y else (head y):merge f x (tail y)

