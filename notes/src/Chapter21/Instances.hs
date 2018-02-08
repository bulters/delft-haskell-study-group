{-# LANGUAGE FlexibleContexts #-}
module Chapter21.Instances where

import           Test.QuickCheck
import           Test.QuickCheck.Checkers
import           Test.QuickCheck.Classes

-- Write a Traversable instance for the datatype provided,
-- filling in any required superclasses.
-- Use QuickCheck to validate your instances

-- 1.
newtype Identity a = Identity a
  deriving (Eq, Ord, Show)

-- testIdentity = quickBatch $ traversable (undefined :: Identity (Int, String, Double))

-- 2.
newtype Constant a b =
  Constant { getConstant :: a }

-- 3.
data Optional a =
    Nada
  | Yep a

-- 4.
data List a =
    Nil
  | Cons a (List a)

-- 5.
data Three a b c =
  Three a b c

-- 6.
data Pair a b =
  Pair a b

-- 7.
-- When you have more than one value of type b,
-- you’ll want to use Monoid and Applicative for
-- the Foldable and Traversable instances respectively.
data Big a b =
  Big a b b

-- 8.
data Bigger a b =
  Bigger a b b b

-- 9.
data S n a = S (n a) a deriving (Eq, Show)

instance ( Functor n
         , Arbitrary (n a)
         , Arbitrary a )
         => Arbitrary (S n a) where
  arbitrary =
    S <$> arbitrary <*> arbitrary


instance ( Applicative n
         , Testable (n Property)
         , EqProp a )
        => EqProp (S n a) where
  (S x y) =-= (S p q) =
    (property $ (=-=) <$> x <*> p) .&. (y =-= q)

-- instance Traversable n => Traversable (S n) where
--     traverse = undefined


sampleS = sample' (arbitrary :: Gen (S [] Int))
