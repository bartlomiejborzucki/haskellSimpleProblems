-- insert sort 

insertionsort :: (a->a->Bool) -> [a] -> [a]
insertionsort f [] = []
insertionsort f (x:xs) = insert f x (insertionsort f xs)
  
insert :: (a->a->Bool) -> a -> [a] -> [a]
insert f a [] = a:[]
insert f a (x:xs) = if f a x then a:x:xs else x: insert f a xs


