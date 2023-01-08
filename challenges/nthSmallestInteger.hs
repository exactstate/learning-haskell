-- Write a function that takes a list of integers and returns the
-- second smallest number in the list.
-- (I've decided to do the n-th smallest integer)

import Data.List (sort)

nthSmallestInteger :: Int -> [Int] -> Int
nthSmallestInteger n [] = error "No integers in array"
nthSmallestInteger n [x] = if n == 1 then x else error "Array not big enough"
nthSmallestInteger n xs = sort xs !! (n - 1)

main = do
  print ("2nd - expected 53: " ++ show (nthSmallestInteger 2 [43, 93, 53, 192]))
  print ("1st - expected 43: " ++ show (nthSmallestInteger 1 [43, 93, 53, 192]))
  print ("3rd - expected 93: " ++ show (nthSmallestInteger 3 [43, 93, 53, 192]))