module Chapter10.WarmUp where

stops = "pbtdkg"
vowels = "aeiou"

-- 1a
-- Write a function that takes inputs from stops and vowels and makes 
-- 3-tuples of all possible stop-vowel-stop combinations. These will 
-- not all correspond to real words in English, although the 
-- stop-vowel-stop pattern is common enough that many of them will.
stopVowelStopCombinations :: [Char] -> [Char] -> (Char, Char, Char)
stopVowelStopCombinations = undefined

-- 1b
-- Modify that function so that it only returns the combinations 
-- that begin with a p.
stopVowelStopCombinations' :: [Char] -> [Char] -> (Char, Char, Char)
stopVowelStopCombinations' = undefined

-- 1c
-- Now set up lists of nouns and verbs (instead of stops and vowels) 
-- and modify the function to make tuples representing possible 
-- noun-verb-noun sentences.
nounVerbNoun :: [String] -> [String] -> (String, String, String)
nounVerbNoun = undefined

-- 2
-- What does the following mystery function do? What is its type?
-- Try to get a good sense of what it does before you test it in the
-- REPL to verify it.
seekritFunc x =
  div (sum (map length (words x)))
      (length (words x))

-- 3
-- We’d really like the answer to be more precise. Can you rewrite
-- that using fractional division?
seekritFunc' = undefined