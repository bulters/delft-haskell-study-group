module Chapter18.Instances where

-- 1.
data Nope a =
  NopeDotJpg

-- 2.
data PhhhbbtttEither b a =
    Left a
  | Right b

-- 3.
newtype Identity a = Identity a
  deriving (Eq, Ord, Show)

instance Functor Identity where
  fmap = undefined

instance Applicative Identity where
  pure = undefined
  (<*>) = undefined

instance Monad Identity where
  (>>=) = undefined

-- 4.
data List a =
    Nil
  | Cons a (List a)