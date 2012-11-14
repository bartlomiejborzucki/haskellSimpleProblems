--binsearch

countZero :: [Int] -> Int
countZero [] = 0
countZero (x:xs) = if x == 0 then 1 + countZero xs else countZero xs

countOne :: [Int] -> Int
countOne [] = 0
countOne (x:xs) = if x == 1 then 1 + countOne xs else countOne xs

writeOne :: Int -> [Int]
writeOne 0 = []
writeOne x = 1: writeOne (x-1)

writeZero :: Int -> [Int]
writeZero 0 = []
writeZero x = 0: writeZero (x-1)

binsearch :: [Int] -> [Int]
binsearch [] = []
binsearch xs = writeZero (countZero xs) ++ writeOne (countOne xs)