f x = map (+1) x
f1 x = map (-1) x
f2 x = [x] : [1]
f3 x = x * sin 1.1


f4 xs = foldr (\ x z -> z + 1) 0 xs
f5 x = foldr (\x _ -> x) 0 x