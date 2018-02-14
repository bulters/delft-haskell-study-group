module Chapter22.WarmUp where

import           Control.Applicative
import           Data.Maybe

x = [1, 2, 3]
y = [4, 5, 6]
z = [7, 8, 9]

-- lookup :: Eq a => a -> [(a, b)] -> Maybe b

-- zip x and y using 3 as the lookup key
xs :: Maybe Integer
xs = undefined

-- zip y and z using 6 as the lookup key
ys :: Maybe Integer
ys = undefined

-- it's also nice to have one that
-- will return Nothing, like this one
-- zip x and y using 4 as the lookup key
zs :: Maybe Integer
zs = lookup 4 $ zip x y

-- now zip x and z using a
-- variable lookup key
z' :: Integer -> Maybe Integer
z' n = undefined

-- Now we want to add the ability to make a Maybe (,) of values using
-- Applicative. Have x1 make a tuple of xs and ys, and x2 make a tuple of
-- of ys and zs. Also, write x3 which takes one input and makes a tuple
-- of the results of two applications of z' from above.
x1 :: Maybe (Integer, Integer)
x1 = liftA2 (,) xs ys

x2 :: Maybe (Integer, Integer)
x2 = undefined

x3 :: Integer -> (Maybe Integer, Maybe Integer)
x3 = undefined


-- Next, we’re going to make some helper functions. Let’s use uncurry
-- to allow us to add the two values that are inside a tuple:
-- uncurry :: (a -> b -> c) -> (a, b) -> c

-- that first argument is a function
-- in this case, we want it to be addition
-- summed is uncurry with addition as
-- the first argument

summed :: Num c => (c, c) -> c
summed = undefined

-- And now we’ll make a function similar to some we’ve seen before
-- that lifts a boolean function over two partially applied functions:
bolt :: Integer -> Bool
-- use &&, >3, <8
bolt = undefined


main :: IO ()
main = do
  print $ sequenceA [Just 3, Just 2, Just 1]
  print $ sequenceA [x, y]
  print $ sequenceA [xs, ys]
  print $ summed <$> ((,) <$> xs <*> ys)
  print $ fmap summed ((,) <$> xs <*> zs)
  print $ bolt 7
  print $ fmap bolt z


sequA :: Integral a => a -> [Bool]
sequA m = sequenceA [(>3), (<8), even] m

s' = summed <$> ((,) <$> xs <*> ys)

-- 1.
-- fold the boolean conjunction operator over the list of results of
-- sequA (applied to some value)

-- 2.
-- apply sequA to s'; you’ll need fromMaybe.

-- 3.
-- apply bolt to ys; you’ll need fromMaybe.
