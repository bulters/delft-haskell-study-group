module Chapter15.Semigroup where

import Data.Semigroup
import Test.QuickCheck

-- 1. Validate all of your instances with QuickCheck. Since 
-- Semigroup’s only law is associativity, that’s the only property
-- you need to reuse. Keep in mind that you’ll potentially need 
-- to import the modules for Monoid and Semigroup and to avoid
-- naming conflicts for the ((<>)) depending on your version of
-- GHC.
data Trivial = Trivial deriving (Eq, Show)

instance Semigroup Trivial where
  _ <> _ = undefined

instance Arbitrary Trivial where
  arbitrary = return Trivial

semigroupAssoc :: (Eq m, Semigroup m) => m -> m -> m -> Bool
semigroupAssoc a b c = (a <> (b <> c)) == ((a <> b) <> c)

type TrivialAssoc = Trivial -> Trivial -> Trivial -> Bool

main :: IO ()
main =
  quickCheck (semigroupAssoc :: TrivialAssoc)

-- 2.
newtype Identity a = Identity a

-- 3. 
data Two a b = Two a b

-- 4. 
data Three a b c = Three a b c

-- 5. 
data Four a b c d = Four a b c d

-- 6.
newtype BoolConj = BoolConj Bool

-- What it should do:
-- 
-- Prelude> (BoolConj True) <> (BoolConj True)
-- BoolConj True
-- Prelude> (BoolConj True) <> (BoolConj False)
-- BoolConj False


-- 7. 
newtype BoolDisj = BoolDisj Bool
-- What it should do:
-- 
-- Prelude> (BoolDisj True) <> (BoolDisj True)
-- BoolDisj True
-- Prelude> (BoolDisj True) <> (BoolDisj False)
-- BoolDisj True


-- 8. 
data Or a b =
    Fst a
  | Snd b

-- The Semigroup for Or should have the following behavior. We
-- can think of this as having a “sticky” Snd value where it’ll hold
-- onto the first Snd value when and if one is passed as an argument.
-- This is similar to the First' Monoid you wrote earlier.
-- 
-- Prelude> Fst 1 <> Snd 2
-- Snd 2
-- Prelude> Fst 1 <> Fst 2
-- Fst 2
-- Prelude> Snd 1 <> Fst 2
-- Snd 1
-- Prelude> Snd 1 <> Snd 2
-- Snd 1

-- 9. 
-- Keep in mind you won’t be able to easily test associativity for
-- Combine because it contains functions.

newtype Combine a b =
  Combine { unCombine :: (a -> b) }

-- What it should do:

-- Prelude> let f = Combine $ \n -> Sum (n + 1)
-- Prelude> let g = Combine $ \n -> Sum (n - 1)
-- Prelude> unCombine (f <> g) $ 0
-- Sum {getSum = 0}
-- Prelude> unCombine (f <> g) $ 1
-- Sum {getSum = 2}
-- Prelude> unCombine (f <> f) $ 1
-- Sum {getSum = 4}
-- Prelude> unCombine (g <> f) $ 1
-- Sum {getSum = 2}


-- 10.
newtype Comp a =
  Comp { unComp :: (a -> a) }

-- 11.
data Validation a b =
  Failure a | Success b
  deriving (Eq, Show)

instance Semigroup a => Semigroup (Validation a b) where
  (<>) = undefined

-- 12.
-- Validation with a Semigroup
-- that does something different
newtype AccumulateRight a b =
  AccumulateRight (Validation a b)
  deriving (Eq, Show)

instance Semigroup b => Semigroup (AccumulateRight a b) where
  (<>) = undefined

-- 13.
-- Validation with a Semigroup
-- that does something more
newtype AccumulateBoth a b =
  AccumulateBoth (Validation a b)
  deriving (Eq, Show)

instance (Semigroup a, Semigroup b) => Semigroup (AccumulateBoth a b) where
  (<>) = undefined