selections ::(a->a->Bool)->[a]->[a]
selections f x
	| (length x) <= 1 = x
	| otherwise = (naj f (tail x) (head x)):selections f (del f (naj f (tail x) (head x) ) x ) where
		naj f [] y = y
		naj f x y = if f (head x) y then naj f (tail x) y else naj f (tail x) (head x)

del::(a->a->Bool)->a->[a]->[a]
del  _ _ [] = []
del f x (y:ys) = if f x y == f y x then ys else y:(del f x ys) 



