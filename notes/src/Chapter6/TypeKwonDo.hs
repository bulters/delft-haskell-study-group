module Chapter6.TypeKwonDo where

-- Try to fill in the terms (code) that fit with the type
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f a b = undefined

-- Hint: use some arithmetic operation to
-- combine values of type 'b'. Pick one.
arith :: Num b => (a -> b) -> Integer -> a -> b
arith f i a = undefined