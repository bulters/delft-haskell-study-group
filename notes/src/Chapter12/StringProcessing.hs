module Chapter12.StringProcessing where

-- 1
-- Write a recursive function named replaceThe which 
-- takes a text/string, breaks it into words and replaces 
-- each instance of “the” with “a”. It’s intended only to 
-- replace exactly the word “the”. notThe is a suggested 
-- helper function for accomplishing this.

-- example GHCi session

-- >>> notThe "the"
-- Nothing
-- >>> notThe "blahtheblah"
-- Just "blahtheblah"
-- >>> notThe "woot"
-- Just "woot"
notThe :: String -> Maybe String
notThe = undefined

-- >>> replaceThe "the cow loves us"
-- "a cow loves us"
replaceThe :: String -> String
replaceThe = undefined

-- 2
-- Write a recursive function that takes a text/string, 
-- breaks it into words, and counts the number of 
-- instances of ”the” followed by a vowel-initial word.
countTheBeforeVowel :: String -> Integer
countTheBeforeVowel = undefined

-- Example output:
-- >>> countTheBeforeVowel "the cow"
-- 0
-- >>> countTheBeforeVowel "the evil cow"
-- 1


-- 3
-- Return the number of letters that are vowels in a word.
-- Hint: it’s helpful to break this into steps. Add any 
-- helper functions necessary to achieve your objectives.
--   a) Test for vowelhood
--   b) Return the vowels of a string
--   c) Count the number of elements returned
countVowels :: String -> Integer
countVowels = undefined

-- Example output:
-- >>> countVowels "the cow"
-- 2
-- >>> countVowels "Mikolajczak"
-- 4