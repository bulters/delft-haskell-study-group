module Chapter12.BinaryTree where

data BinaryTree a =
    Leaf
  | Node (BinaryTree a) a (BinaryTree a)
  deriving (Eq, Ord, Show)

-- 1. Write unfold for BinaryTree.
unfold :: (a -> Maybe (a,b,a)) -> a -> BinaryTree b
unfold = undefined

-- 2. Make a tree builder.
-- Using the unfold function you’ve made for BinaryTree,
-- write the following function:
treeBuild :: Integer -> BinaryTree Integer
treeBuild n = undefined