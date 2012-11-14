data Expr = Const Integer | Var String | Neg Expr | (:+:) Expr Expr | (:-:) Expr Expr | (:*:) Expr Expr| (:/:) Expr Expr| Sin Expr| Cos Expr| Ln Expr
infix 7 :*:, :/:
infix 6 :+:, :-:

instance Show Expr where 
   show (Const x) = show x
   show (Var x) = x
   show (Neg x) = "-" ++ "(" ++ (show x) ++ ")"
   show ( (:+:) a b) = "(" ++ (show a)++ ")"++"+"++ "(" ++ (show b) ++ ")"
   show ( (:-:) a b) = "(" ++ (show a) ++ ")" ++"-"++"(" ++(show b) ++ ")"
   show ( (:*:) a b) = "(" ++ (show a) ++ ")" ++ "*" ++ "(" ++ (show b) ++ ")"
   show ( (:/:) a b) = "(" ++ (show a) ++ ")" ++ "/"++ "(" ++ (show b) ++ ")"
   show (Sin a) ="Sin"++"("++(show a)++")"
   show (Cos a) ="Cos"++"("++(show a)++")"
   show (Ln a) ="Ln"++"("++(show a)++")"

diff::Expr->String->Expr
diff (Const x) _ = Const 0
diff (Var x) y = if x==y then Const 1 else Const 0
diff (Neg x) y= Neg (diff x y)
diff ( a :+: b) y = (diff a y) :+: (diff b y)
diff ( a :-: b) y = (diff a y) :-: (diff b y)
diff ( a :*: b) y = a :*: (diff b y) :+: b :*: (diff a y)
diff ( a :/: b) y = ((diff a y):*:b:-:a:*:(diff b y)):/:(b:*:b)
diff (Sin x) y= (diff x y):*:(Cos x)
diff (Cos x) y= Neg ((diff x y):*:(Sin x))
diff (Ln x) y = (diff x y):*:( (Const 1) :/:x) 

simplyfy::Expr->Expr
simplyfy (x :+: y) =
   case (xm,ym) of
      ( (Const 0), (Const 0) ) -> Const 0
      (Const 0, j)->j
      (k ,Const 0)->k
      (Const k, Const j)->Const (k+j)
      (_,_)->xm :+: ym
      where xm=simplyfy x
            ym=simplyfy y
simplyfy (x :*: y) =
   case (xm,ym) of
      ( (Const 0),  (Const 0) ) -> Const 0
      (Const 0, j)->Const 0
      (k ,Const 0)->Const 0
      (Const 1, j)->j
      (k ,Const 1)->k
      (Const k, Const j)->Const (k*j)
      (_,_)->xm :*: ym
      where xm=simplyfy x
            ym=simplyfy y
simplyfy (x :/: y) =
   case (xm,ym) of
      (Const 0, j)->Const 0
      (k ,Const 0)-> undefined
      (k ,Const 1)->k
      (Const k, Const j)->Const (k/j)
      (_,_)->xm :/: ym
      where xm=simplyfy x
            ym=simplyfy y
simplyfy (Sin x) =
   case xm of
      (Const 0) -> Const 0
      _ -> Sin xm
      where xm=simplyfy x
simplyfy (Cos x) =
   case xm of
      (Const 0) -> Const 1
      _ -> Cos xm
      where xm=simplyfy x
simplyfy(Ln x) =
   case xm of
      (Const 1) -> Const 0
       _ -> Ln xm
      where xm=simplyfy x
simplyfy(Neg x) =
   case xm of
      (Neg k) -> k
      _ -> Neg xm
      where xm=simplyfy x
simplyfy x = x



map'::(a->b)->[a]->[b]	
map' f ys  = foldr (\x xs -> f x : xs) [] ys

polacz::[a]->[a]->[a]
polacz a b = foldr (\x xs -> x:xs) b a

unzip':: [(a,b)] -> ([a],[b])
unzip' x = (foldr (\(x,y) xs-> x:xs) [] x, foldr (\(x,y) ys-> y:ys) [] x)

filter'::(a->Bool)->[a]->[a]
filter' f xs = foldr (\y ys -> if f y then y:ys else ys) [] xs

concat':: [[a]] -> [a]
concat' [[]] = []
concat' xs = foldl (++) [] xs

length':: [a] -> Integer
length' x = foldr  (\ _ n-> (n+1) ) 0 x
