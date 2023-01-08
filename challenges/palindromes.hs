-- Write a function that takes a list of strings and returns a list of the strings that
-- are palindromes (i.e., strings that read the same forwards and backwards).

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

filterStringList :: (String -> Bool) -> [String] -> [String]
filterStringList f xs = [x | x <- xs, f x]

main = do
  print (filterStringList isPalindrome ["racecar", "babab", "abad", "aba", "car"])