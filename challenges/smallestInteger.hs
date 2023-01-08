-- Write a function that takes a list of integers and returns the smallest number in the list.

smallestInt :: [Int] -> Int
smallestInt [] = error "Empty integer array"
smallestInt [x] = x
smallestInt (x : xs) = smallest x (smallestInt xs)

smallest :: Int -> Int -> Int
smallest x y = if x < y then x else y -- could use min

main = do
  print (smallestInt [45, 83, 29, 5])