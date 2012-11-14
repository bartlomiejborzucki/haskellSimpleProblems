data Tree a = Node a (Tree a) (Tree a)| Leaf

inorder::Tree a->[a]
inorder Leaf  = []
inorder (Node b tl tr) = (inorder tl) ++ [b] ++ (inorder tr)

treesort::(a->a->Bool)->[a]->[a]
treesort f xs = inorder (foldl insert  Leaf xs) where
   insert  Leaf a = Node a Leaf Leaf
   insert  (Node b  tl tr)  a = if f b a then Node b (insert  tl a) tr else Node b tl (insert  tr a)

