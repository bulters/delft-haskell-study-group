module Chapter18.Functions where

-- 1.
j :: Monad m => m (m a) -> m a
j = undefined

-- Expecting the following behavior:
--
-- Prelude> j [[1, 2], [], [3]]
-- [1,2,3]
-- Prelude> j (Just (Just 1))
-- Just 1
-- Prelude> j (Just Nothing)
-- Nothing
-- Prelude> j Nothing
-- Nothing

-- 2.
l1 :: Monad m => (a -> b) -> m a -> m b
l1 = undefined

-- 3.
l2 :: Monad m => (a -> b -> c) -> m a -> m b -> m c
l2 = undefined
-- 4.
a :: Monad m => m a -> m (a -> b) -> m b
a = undefined

-- 5. You’ll need recursion for this one.
meh :: Monad m => [a] -> (a -> m b) -> m [b]
meh = undefined

-- 6. Hint: reuse “meh”
flipType :: (Monad m) => [m a] -> m [a]
flipType = undefined