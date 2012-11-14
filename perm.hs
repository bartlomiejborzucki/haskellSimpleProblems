
perms::(Eq a)=>[a] -> [[a]]
perms [] = [[]]
perms x = [ y:ys |y<-x, ys<-perms (delete y x)]

delete ::(Eq a) => a -> [a] -> [a]
delete _ [] = []
delete x (y:ys) = if x==y then ys else y:(delete x ys)

permi::[a]->[[a]]
permi [] = [[]]
permi (x:xs) = [(take k xx) ++ [x] ++ (drop k xx)|k<-[0..(length xs)], xx <-permi xs] 

