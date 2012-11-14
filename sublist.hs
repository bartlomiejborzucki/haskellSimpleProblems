sublista [] = [[]]
sublista (x:xs) = [ x:y | y <- sublista xs ] ++ sublista xs

