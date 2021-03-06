module Chapter12.Unfold where

-- 1. Write the function myIterate using direct recursion. Compare
-- the behavior with the built-in iterate to gauge correctness. Do
-- not look at the source or any examples of iterate so that you
-- are forced to do this yourself.
myIterate :: (a -> a) -> a -> [a]
myIterate = undefined

-- Example output:
--  > take 10 $ myIterate (+1) 0
-- [0,1,2,3,4,5,6,7,8,9]


-- 2. Write the function myUnfoldr using direct recursion. Compare
-- with the built-in unfoldr to check your implementation. Again,
-- don’t look at implementations of unfoldr so that you figure it
-- out yourself.
myUnfoldr :: (b -> Maybe (a, b)) -> b -> [a]
myUnfoldr = undefined

-- 3. Rewrite myIterate into betterIterate using myUnfoldr. A hint —
-- we used unfoldr to produce the same results as iterate earlier.
-- Do this with different functions and see if you can abstract the
-- structure out.

-- It helps to have the
-- types in front of you
-- myUnfoldr :: (b -> Maybe (a, b)) -> b -> [a]
betterIterate :: (a -> a) -> a -> [a]
betterIterate f x = myUnfoldr undefined undefined