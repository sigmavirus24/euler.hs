import Data.List (union)

solution :: Integer
solution = sum [x | x <- [1..999], mod x 3 == 0 || mod x 5 == 0]

solution' :: Integer
solution' = sum $ union [3, 6..999] [5, 10..999]
