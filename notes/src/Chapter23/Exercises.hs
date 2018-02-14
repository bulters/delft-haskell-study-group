module Chapter23.Exercises where

newtype State s a = State (s -> (a, s))

-- 1.
-- Construct a State where the state is also the value you return.
get :: State s s
get = undefined

-- 2.
-- Construct a State where the resulting state is the argument
-- provided and the value is defaulted to unit.
put :: s -> State s ()
put s = undefined

-- 3.
-- Run the State with s and get the state that results.
exec :: State s a -> s -> s
exec (State sa) s = undefined

-- 4.
-- Run the State with s and get the value that results
eval :: State s a -> s -> a
eval (State sa) = undefined

-- 5.
-- Write a function which applies a function to create a new State.
modify :: (s -> s) -> State s ()
modify = undefined
