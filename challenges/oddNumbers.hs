-- Write a function that takes a list of integers and returns the sum of all
-- the odd numbers in the list.

oddNumbers :: ([Int] -> Int) -> [Int] -> Int
oddNumbers f xs = f [x | x <- xs, x `mod` 2 == 1]

main = do
  print (oddNumbers sum [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])