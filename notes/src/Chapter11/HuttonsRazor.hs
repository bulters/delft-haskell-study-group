module Chapter11.HuttonsRazor where

-- 1. Your first task is to write the “eval” function 
-- which reduces an expression to a final sum.

data Expr = 
    Lit Integer
  | Add Expr Expr

eval :: Expr -> Integer
eval = error "do it to it"

-- Example output:
--  > eval (Add (Lit 1) (Lit 9001))
-- 9002

-- 2. Write a printer for the expressions.
printExpr :: Expr -> String
printExpr = undefined
-- Expected output:
--  > printExpr (Add (Lit 1) (Lit 9001))
-- "1 + 9001"
--  > let a1 = Add (Lit 9001) (Lit 1)
--  > let a2 = Add a1 (Lit 20001)
--  > let a3 = Add (Lit 1) a2
--  > printExpr a3
-- "1 + 9001 + 1 + 20001"