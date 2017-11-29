module Chapter6.DoesItTypecheck where

data Person = Person Bool

-- Do the following lines typecheck?
-- printPerson :: Person -> IO ()
-- printPerson person = putStrLn (show person)



----


data Mood = Blah | Woot 
  deriving Show

-- Do the following lines typecheck?
-- settleDown x = 
--   if x == Woot
--   then Blah
--   else x

-- If you were able to get settleDown to typecheck:
-- a) What values are acceptable inputs to that function?
-- b) What will happen if you try to run settleDown 9? Why?
-- c) What will happen if you try to run Blah > Woot? Why



----



  
type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)

-- Do the following lines typecheck?
-- s1 = Sentence "dogs" "drool"
-- s2 = Sentence "Julie" "loves" "dogs"




----




data Rocks =
  Rocks String 
  deriving (Eq, Show)

data Yeah =
  Yeah Bool 
  deriving (Eq, Show)

data Papu =
  Papu Rocks Yeah
  deriving (Eq, Show)

-- Which of the following will typecheck?
-- phew = Papu "chases" True

-- truth = Papu 
--           (Rocks "chomskydoz")
--           (Yeah True)

-- equalityForall :: Papu -> Papu -> Bool
-- equalityForall p p' = p == p'

-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p
