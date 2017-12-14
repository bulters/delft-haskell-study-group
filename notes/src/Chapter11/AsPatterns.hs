module Chapter11.AsPatterns where

-- Use as-patterns to solve the following exercises.

-- Example:
doubleUp :: [a] -> [a]
doubleUp [] = []
doubleUp xs@(x:_) = x : xs
--       ^ this is an as pattern

-- 1.
-- This should return True if (and only if) all the values in the
-- first list appear in the second list, though they need not be
-- contiguous.
isSubseqOf :: (Eq a) => [a] -> [a] -> Bool
isSubseqOf = undefined

-- 2.
-- Split a sentence into words, then tuple each word with the 
-- capitalized form of each.
-- 
-- Example output:
-- > capitalizeWords "hello world"
-- [("hello", "Hello"), ("world", "World")]

capitalizeWords :: String -> [(String, String)]
capitalizeWords = undefined