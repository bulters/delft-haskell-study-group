module Chapter16.CanItBeFunctor where

import GHC.Arr

-- Determine if a valid Functor can be written for the datatype provided.
-- 1. 
data Bool =
  False | True


-- 2. 
data BoolAndSomethingElse a =
  False' a | True' a

  
-- 3. 
data BoolAndMaybeSomethingElse a =
  Falsish | Truish a


-- 4. Use the kinds to guide you on this one, don’t get too hung up
-- on the details.
newtype Mu f = InF { outF :: f (Mu f) }


-- 5. Again, just follow the kinds and ignore the unfamiliar parts
data D =
  D (Array Word Word) Int Int