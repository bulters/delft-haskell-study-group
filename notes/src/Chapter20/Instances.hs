module Chapter20.Instances where

-- Write Foldable instances for the following datatypes

-- 1.
data Constant a b =
  Constant b

-- 2.
data Two a b =
  Two a b

-- 3.
data Three a b c =
  Three a b c

-- 4.
data Three' a b =
  Three' a b b

-- 5.
data Four' a b =
  Four' a b b b


-- Write a filter function for Foldable types using foldMap
filterF :: ( Applicative f
           , Foldable t
           , Monoid (f a))
           => (a -> Bool) -> t a -> f a
filterF = undefined
