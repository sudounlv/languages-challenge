import qualified Data.Set as Set

-- Find the length of the longest substring with no repeating characters
lengthOfLongestNRCSubstring :: [Char] -> Int
lengthOfLongestNRCSubstring str = 0

-- print a test result
runExample str = do
  putStrLn $ str ++ ": " ++ result
    where result = show . lengthOfLongestNRCSubstring $ str

-- main program
main = do
  runExample "aaaaaaaaaa"
  runExample "abc"
  runExample "hello"
  runExample "welcomefriend"
  runExample "abcdefaghi"
