module Chapter6.MatchTheTypes where

import Data.List (sort)

-- 1
i :: Num a => a
i = 1

-- Try replacing the type signature with the following:
-- i :: a

-- 2, 3 and 4
f :: Float
f = 1.0

-- Try replacing the type signature with the following:
-- f :: Num a => a
-- f :: Fractional a => a
-- f :: RealFrac a => a

-- 5 and 6
freud :: a -> a
freud x = x

-- Try replacing the type signature with the following:
-- freud :: Ord a => a -> a
-- freud :: Int -> Int

-- 7 and 8
myX = 1 :: Int

sigmund :: Int -> Int
sigmund x = myX

-- Try replacing the type signature with the following:
-- sigmund :: a -> a
-- sigmund :: Num a => a -> a

-- 9
jung :: Ord a => [a] -> a
jung xs = head (sort xs)

-- Try replacing the type signature with the following:
-- jung :: [Int] -> Int

-- 10
young :: [Char] -> Char
young xs = head (sort xs)

-- Try replacing the type signature with the following:
-- young :: Ord a => [a] -> a

-- 11
mySort :: [Char] -> [Char]
mySort = sort

signifier :: [Char] -> Char
signifier xs = head (mySort xs)

-- Try replacing the type signature with the following:
-- signifier :: Ord a => [a] -> a