module Chapter15.Monoid where

import Chapter15.Semigroup
import Data.Monoid
import Test.QuickCheck

-- 1. 
-- Again, validate all of your instances with QuickCheck. Example
-- scaffold is provided for the Trivial type.

instance Monoid Trivial where
  mempty = undefined
  mappend = (<>)

monoidLeftIdentity a = undefined

monoidRightIdentity a = undefined

main :: IO ()
main = do
  quickCheck (semigroupAssoc :: TrivialAssoc)
  quickCheck (monoidLeftIdentity :: Trivial -> Bool)
  quickCheck (monoidRightIdentity :: Trivial -> Bool)


-- 2.
newtype Identity a = Identity a deriving Show


-- 3.
data Two a b = Two a b deriving Show


-- 4.
newtype BoolConj =
  BoolConj Bool

-- What it should do:
-- 
-- Prelude> (BoolConj True) `mappend` mempty
-- BoolConj True
-- Prelude> mempty `mappend` (BoolConj False)
-- BoolConj False


-- 5.
newtype BoolDisj =
  BoolDisj Bool

-- What it should do:
-- 
-- Prelude> (BoolDisj True) `mappend` mempty
-- BoolDisj True
-- Prelude> mempty `mappend` (BoolDisj False)
-- BoolDisj False


-- 6.
newtype Combine a b =
  Combine { unCombine :: (a -> b) }

-- What it should do:
-- 
-- Prelude> let f = Combine $ \n -> Sum (n + 1)
-- Prelude> unCombine (mappend f mempty) $ 1
-- Sum {getSum = 2}

-- 7.
-- Hint: We can do something that seems a little more specific and
-- natural to functions now that the input and output types are the
-- same
newtype Comp a =
  Comp (a -> a)


-- 8. 
-- This next exercise will involve doing something that will feel
-- a bit unnatural still and you may find it difficult. If you get it
-- and you haven’t done much FP or Haskell before, get yourself a
-- nice beverage. We’re going to toss you the instance declaration
-- so you don’t churn on a missing Monoid constraint you didn’t
-- know you needed.

newtype Mem s a =
  Mem {
    runMem :: s -> (a, s)
  }

instance Monoid a => Monoid (Mem s a) where
  mempty = undefined
  mappend = undefined

-- Given the following code:
-- 
f' = Mem $ \s -> ("hi", s + 1)

main' = do
  print $ runMem (f' <> mempty) 0
  print $ runMem (mempty <> f') 0
  print $ (runMem mempty 0 :: (String, Int))
  print $ runMem (f' <> mempty) 0 == runMem f' 0
  print $ runMem (mempty <> f') 0 == runMem f' 0

-- A correct Monoid for Mem should, given the above code, get
-- the following output:
-- 
-- Prelude> main
-- ("hi",1)
-- ("hi",1)
-- ("",0)
-- True
-- True