{-# LANGUAGE DeriveFunctor #-}
module Chapter21.Tree where

-- This might be hard. Write the following instances for Tree.
data Tree a =
  Empty
  | Leaf a
  | Node (Tree a) a (Tree a)
  deriving (Eq, Show, Functor)

-- foldMap is a bit easier and looks more natural,
-- but you can do foldr too for extra credit.
instance Foldable Tree where
  foldMap = undefined

instance Traversable Tree where
  traverse = undefined

-- Hints:
-- 1. For foldMap, think Functor but with some Monoid thrown in.
-- 2. For traverse, think Functor but with some Functor thrown in.
