module Chapter20.Library where

import           Prelude       hiding (elem, fold, foldMap, length, maximum,
                                minimum, null, product, sum, toList)

import           Data.Foldable
-- Implement the functions in terms of foldMap or
-- foldr from Foldable, then try them out with
-- multiple types that have Foldable instances.

-- 1.
sum :: (Foldable t, Num a) => t a -> a
sum = undefined


-- 2.
product :: (Foldable t, Num a) => t a -> a
product = undefined


-- 3.
elem :: (Foldable t, Eq a) => a -> t a -> Bool
elem = undefined


-- 4.
minimum :: (Foldable t, Ord a) => t a -> Maybe a
minimum = undefined


-- 5.
maximum :: (Foldable t, Ord a) => t a -> Maybe a
maximum = undefined


-- 6.
null :: (Foldable t) => t a -> Bool
null = undefined


-- 7.
length :: (Foldable t) => t a -> Int
length = undefined


-- 8.
toList :: (Foldable t) => t a -> [a]
toList = undefined


-- 9. Hint: use foldMap
fold :: (Foldable t, Monoid m) => t m -> m
fold = undefined


-- 10. Define foldMap in terms of foldr
foldMap :: (Foldable t, Monoid m)
        => (a -> m) -> t a -> m
foldMap = undefined

