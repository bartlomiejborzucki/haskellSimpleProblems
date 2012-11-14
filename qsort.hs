module Main
	where
quicksort::(a->a->Bool)->[a]->[a]
quicksort f a
   | length a<=1 = a
   | otherwise = (quicksort f ([y|y<-(tail a),f (head a) y]))++[(head a)]++(quicksort f [y|y<-(tail a),f y (head a)])


