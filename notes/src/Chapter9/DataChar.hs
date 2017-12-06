module Chapter9.DataChar where

import Data.Char

-- 2
-- Write a function that transforms "HbEfLrLxO" into "HELLO"
-- using isUpper or toUpper.
transform :: String -> String
transform = undefined

-- 3
-- Write a function that will capitalize the first letter of a String 
-- and return the entire String. For example, if given the argument
-- “julie,” it will return "Julie".
capitalize :: String -> String
capitalize = undefined

-- 4
-- Now make a new version of that function that is recursive such
-- that if you give it the input “woot” it will holler back at you
-- “WOOT.” The type signature won’t change, but you will want to
-- add a base case.
capitalize' :: String -> String
capitalize' = undefined

-- 5
-- Write a function that will capitalize the first letter of a 
-- String and return only that letter as the result.
-- Use the 'head' function.
headToUpper :: String -> Char
headToUpper = undefined

-- 6
-- Now rewrite it as a composed function. 
-- Then, for fun, rewrite it pointfree.
headToUpper' :: String -> Char
headToUpper' = undefined