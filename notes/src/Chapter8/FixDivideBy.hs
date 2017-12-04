module Chapter8.FixDivideBy where

{- !
Our dividedBy function wasn’t quite ideal. For one thing. It was a
partial function and doesn’t return a result (bottom) when given a
divisor that is 0 or less.

Using the pre-existing div function we can see how negative 
numbers should be handled:

Prelude> div 10 2
5
Prelude> div 10 (-2)
-5
Prelude> div (-10) (-2)
5
Prelude> div (-10) (2)
-5

The next issue is how to handle zero. Zero is undefined for division
in math, so really we ought to use a datatype that lets us say there
was no sensible result when the user divides by zero. If you need
inspiration, consider using the following datatype to handle this.
-}

data DividedResult = Result Integer | DividedByZero

-- The original divideBy, for reference:
-- dividedBy :: Integral a => a -> a -> (a, a)
-- dividedBy num denom = go num denom 0
--   where go n d count
--           | n < d = (count, n)
--           | otherwise = go (n - d) d (count + 1)