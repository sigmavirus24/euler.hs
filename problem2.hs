fibonacci :: [Integer]
fibonacci = 0 : 1 : [x + y | (x, y) <- zip fibonacci $ tail fibonacci]

solution :: Integer
solution = sum [x | x <- (takeWhile (< 4000000) fibonacci), x `mod` 2 == 0]
