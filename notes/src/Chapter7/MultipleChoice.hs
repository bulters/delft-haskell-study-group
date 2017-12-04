module Chapter7.MultipleChoice where

-- 1
-- A polymorphic function
--    a) changes things into sheep when invoked
--    b) has multiple arguments
--    c) has a concrete type
--    d) may resolve to values of different types, depending on inputs






-- ! 2
-- What is the type of h?
f :: Char -> String
f = undefined

g :: String -> [String]
g = undefined

h = g . f







-- 3
-- What is the type of x?
f' :: Ord a => a -> a -> Bool
f' = undefined

x = f' 1

-- 4
-- A function with the type (a -> b) -> c
--     a) requires values of three different types
--     b) is a higher-order function
--     c) must take a tuple as its first argument
--     d) has its parameters in alphabetical order

-- 5
-- What is the type of y?
f'' :: a -> a
f'' x = x

y = f'' True


