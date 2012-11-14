module Main
	where
f :: Integer -> [(Integer,Integer,Integer)]
f n = [(a,b,c)|a <-[1..n],b <- [a..n], c<-[b..n] , a*a+b*b==c*c]
