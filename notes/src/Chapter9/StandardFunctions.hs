module Chapter9.StandardFunctions where

-- 1
-- myOr returns True if any Bool in the list is True.
myOr :: [Bool] -> Bool
myOr = undefined

-- 2
-- myAny returns True if a -> Bool applied to any of the values in
-- the list returns True.
myAny :: (a -> Bool) -> [a] -> Bool
myAny = undefined

-- 3
-- Implement myElem
myElem :: Eq a => a -> [a] -> Bool
myElem = undefined

-- 4
-- Implement myReverse.
myReverse :: [a] -> [a]
myReverse = undefined

-- 5
-- squish flattens a list of lists into a list
squish :: [[a]] -> [a]
squish = undefined

-- 6
-- squishMap maps a function over a list and concatenates the results.
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap = undefined

-- 7
-- squishAgain flattens a list of lists into a list. This time re-use the
-- squishMap function.
squishAgain :: [[a]] -> [a]
squishAgain = undefined

-- 8
-- myMaximumBy takes a comparison function and a list and returns
-- the greatest element of the list based on the last value that
-- the comparison returned GT for.
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy = undefined

-- 9
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy = undefined

-- Using the myMinimumBy and myMaximumBy functions, write your own
-- versions of maximum and minimum.
myMaximum :: (Ord a) => [a] -> a
myMaximum = undefined

myMinimum :: (Ord a) => [a] -> a
myMinimum = undefined