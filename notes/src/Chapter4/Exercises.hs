module Chapter4.Exercises where

awesome = ["Papuchon", "curry", ":)"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]


-- Ex 8
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

-- Ex 9
myAbs :: Integer -> Integer
myAbs x = if x > 0 then x else -x

-- Ex 10
f :: (a, b) 
  -> (c, d) 
  -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))

-- Alternatives to Ex. 10
f' :: (a, b) 
   -> (c, d) 
   -> ((b, d), (a, c))
f' x y = (firstTuple, secondTuple)
  where
    firstTuple = (snd x, snd y)
    secondTuple = (fst x, fst y)

-- Or with pattern matching
f'' :: (a, b) 
    -> (c, d) 
    -> ((b, d), (a, c))
f'' (a, b) (c, d) = ((b, d), (a, c))