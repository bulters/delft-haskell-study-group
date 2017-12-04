module Chapter8.Recursion where

dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0              -- (a)
  where go n d count
          | n < d = (count, n)                    -- (b)
          | otherwise = go (n - d) d (count + 1)  -- (c)

-- ! 1.
-- Write out the steps for reducing dividedBy 15 2 to its final answer
-- according to the Haskell code.

-- ! 2.
-- Write a function that recursively sums all numbers from 1 to n,
-- n being the argument. So that if n was 5, you’d add 1 + 2 + 3 + 4
-- + 5 to get 15. The type should be (Eq a, Num a) => a -> a.

-- 3.
-- Write a function that multiplies two integral numbers using
-- recursive summation. The type should be (Integral a) => a ->
-- a -> a.
