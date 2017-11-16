{-# LANGUAGE NoMonomorphismRestriction #-}
module Chapter5.DetermineTheTypes where

-- Exercise 1

oneA = (* 9) 6

oneB = head [(0,"doge"),(1,"kitteh")]

oneC = head [(0 :: Integer ,"doge"),(1,"kitteh")]

oneD = if False then True else False

oneE = length [1, 2, 3, 4, 5]

oneF =  (length [1, 2, 3, 4]) > (length "TACOCAT")

-- Exercise 2 
-- What is the type of w?
x = 5
y = x + 5
w = y* 10

-- Exercise 3
-- What is the type of z?
z y = y * 10


-- Exercise 4 
-- What is the type of f?
f = 4 / y


-- Exercise 5
-- What is the type of f?
x' = "Julie"
y' = " <3 "
z' = "Haskell"
f' = x' ++ y' ++ z'
