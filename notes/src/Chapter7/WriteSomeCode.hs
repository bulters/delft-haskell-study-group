module Chapter7.WriteSomeCode where

-- 1
tensDigit :: Integral a => a -> a
tensDigit x = d
  where
    xLast = x `div` 10
    d = xLast `mod` 10

-- 1a
-- Rewrite tensDigit by using divMod
tensDigit' x = undefined


-- 1b
-- Does the divMod version have the same type as the original version?

-- 1c
-- Next, let’s change it so that we’re getting the hundreds digit
-- instead. You could start it like this (though that may not be
-- the only possibility):
-- 
-- hunsD x = d2
--   where 
--     d = undefined
--     ...







-- ! 2
-- Implement the function of the type a -> a -> Bool -> a once
-- each using a case expression and once with a guard.

foldBool :: a -> a -> Bool -> a
foldBool = error "Error: Need to implement foldBool!"

-- The result is semantically similar to if-then-else expressions
-- but syntactically quite different. Here is the pattern matching
-- version to get you started:

foldBool3 :: a -> a -> Bool -> a
foldBool3 x y True = x
foldBool3 x y False = y











-- 3
-- Fill in the definition. Note that the first argument to our function
-- is also a function which can be applied to values. Your second
-- argument is a tuple, which can be used for pattern matching:

g :: (a -> b) -> (a, c) -> (b, c)
g = undefined













-- ! 4
-- Evaluate 'main' in the REPL and make sure you understand what it does.
roundTrip :: (Show a, Read a) => a -> a
roundTrip a = read (show a)

main = do
  print (roundTrip 4)
  print (id 4)

-- ! 5
-- Next, write a pointfree version of roundTrip. (n.b., this refers to
-- the function definition, not to its application in main)
roundTrip' :: (Show a, Read a) => a -> a
roundTrip' = undefined

-- ! 6
-- change the type of roundTrip to (Show a, Read b) => a -> b. 
-- How might we tell GHC which instance of
-- Read to dispatch against the String now?
evilRoundTrip :: (Show a, Read b) => a -> b
evilRoundTrip = undefined

-- Make the following work.
-- You will only need the has the type syntax of :: 
-- and parentheses for scoping. 
-- 
-- printEvilRoundTrip = print (evilRoundTrip 4)