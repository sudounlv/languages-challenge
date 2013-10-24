import qualified Data.Set as Set
 
charsUntilRepeat :: Set.Set Char -> [Char] -> [Char]
                    -> (Maybe Char, [Char], [Char])
charsUntilRepeat seen before [] = (Nothing, before, [])
charsUntilRepeat seen before (c:after) =
  if (Set.member c seen)
  then (Just c, before, after)
  else charsUntilRepeat (Set.insert c seen) (before ++ [c]) after
 
removeCharsUpTo :: [Char] -> Char -> [Char]
removeCharsUpTo [] c = []
removeCharsUpTo (first:rest) c = if first == c
                                 then rest
                                 else removeCharsUpTo rest c
 
nonRepeatingCharSubstrings :: [Char] -> [[Char]]
nonRepeatingCharSubstrings [] = []
nonRepeatingCharSubstrings str =
  let
    (char, before, after) = charsUntilRepeat Set.empty "" str
    in case char of
    Just c -> let
      fromRepdChar = removeCharsUpTo before c
      in before : nonRepeatingCharSubstrings (fromRepdChar ++ [c] ++ after)
    Nothing -> [before]
 
lengthOfLongestNRCSubstring :: [Char] -> Int
lengthOfLongestNRCSubstring str =
  foldr max 0 $ map length substrings
  where substrings = nonRepeatingCharSubstrings str
