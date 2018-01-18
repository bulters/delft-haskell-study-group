module Chapter17.Instances where

import Test.QuickCheck
import Test.QuickCheck.Checkers
import Test.QuickCheck.Classes

-- 1.
data Pair a = Pair a a deriving Show

-- 2. This should look familiar.
data Two a b = Two a b


-- 3.
data Three a b c = Three a b c


-- 4.
data Three' a b = Three' a b b


-- 5.
data Four a b c d = Four a b c d


-- 6.
data Four' a b = Four' a a a b

-- main = do
--   quickBatch $ applicative (undefined :: Pair (Int, String, Double))