module Chapter14.QuickCheck where

import Test.Hspec
import Test.QuickCheck

import Data.List (sort)

-- 1. 
half x = x / 2

halfIdentity = (*2) . half

-- 2.
-- for any list you apply sort to
-- this property should hold
listOrdered :: (Ord a) => [a] -> Bool
listOrdered xs =
  snd $ foldr go (Nothing, True) xs
  where 
    go _ status@(_, False) = status
    go y (Nothing, t) = (Just y, t)
    go y (Just x, t) = (Just y, x >= y)

-- 3. Now we’ll test the associative and commutative properties of
-- addition:
plusAssociative x y z =
  x + (y + z) == (x + y) + z

plusCommutative x y =
  x + y == y + x

-- 4. Now do the same for multiplication.

-- 5. We mentioned in one of the first chapters that there are some
-- laws involving the relationship of quot and rem and div and mod.
-- Write QuickCheck tests to prove them.
quotRem x y = 
  (quot x y)*y + (rem x y) == x

divMod x y = 
  (div x y)*y + (mod x y) == x

-- 6. Is (^) associative? Is it commutative? Use QuickCheck to see if
-- the computer can contradict such an assertion.

-- 7. Test that reversing a list twice is the same as the identity of the
-- list:
-- reverse . reverse == id

-- 8. Write a property for the definition of ($).
-- f $ a = f a
-- f . g = \x -> f (g x)

-- 9. See if these two functions are equal:
-- foldr (:) == (++)
-- foldr (++) [] == concat

-- 10. Hm. Is that so?
-- f n xs = length (take n xs) == n

-- 11. Finally, this is a fun one. You may remember we had you compose read and show one time to complete a “round trip.” Well,
-- now you can test that it works:
-- f x = (read (show x)) == x


-- Find out why this property fails.
-- for a function
-- square x = x * x

-- why does this property not hold? Examine the type of sqrt.
-- squareIdentity = square . sqrt

-- Hint: Read about floating point arithmetic and precision if you’re
-- unfamiliar with it.

main :: IO ()
main = hspec $ do 
  it "x + 1 is always greater than x" $ do
    property $ \x -> x + 1 > (x :: Int)

  -- 1
  -- it "half identity" $ do
  --   property $ \x -> undefined

  -- 2
  -- it "list ordered" $ do
  --   undefined

  -- 3
  -- it "plus associative" $ do
  --   undefined

  -- it "plus commutative" $ do
  --   undefined

  -- 4
  -- it "multiplication associative" $ do
  --   undefined

  -- it "multiplication commutative" $ do
  --   undefined



-- We demonstrated in the chapter how to make Gen generators for
-- different datatypes. We are so certain you enjoyed that, we are going
-- to ask you to do it for some new datatypes:

-- 1. Equal probabilities for each.
data Fool =
  Fulse
  | Frue
  deriving (Eq, Show)

-- 2. 2/3s chance of Fulse, 1/3 chance of Frue
data Fool2 =
  Fulse2
  | Frue2
  deriving (Eq, Show)