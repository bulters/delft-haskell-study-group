module Chapter10.RewriteWithFold where

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
-- Write two versions of myElem. One version should use folding
-- and the other should use any.
myElem :: Eq a => a -> [a] -> Bool
myElem = undefined

-- 4
-- Implement myReverse, don’t worry about trying to make it lazy.
myReverse :: [a] -> [a]
myReverse = undefined

-- 5
-- Write myMap in terms of foldr. It should have the same behavior
-- as the built-in map.
myMap :: (a -> b) -> [a] -> [b]
myMap = undefined

-- 6
-- Write myFilter in terms of foldr. It should have the same behavior 
-- as the built-in filter.
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter = undefined

-- 7
-- squish flattens a list of lists into a list
squish :: [[a]] -> [a]
squish = undefined

-- 8
-- squishMap maps a function over a list and concatenates the results.
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap = undefined

-- 9
-- squishAgain flattens a list of lists into a list. This time re-use the
-- squishMap function.
squishAgain :: [[a]] -> [a]
squishAgain = undefined

-- 10
-- myMaximumBy takes a comparison function and a list and returns
-- the greatest element of the list based on the last value that
-- the comparison returned GT for.
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy = undefined

-- 11
-- myMinimumBy takes a comparison function and a list and returns
-- the least element of the list based on the last value that the
-- comparison returned LT for.
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy = undefined