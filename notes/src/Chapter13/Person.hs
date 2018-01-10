module Chapter13.Person where

-- Exercise 4.

type Name = String
type Age = Integer

data Person = Person Name Age deriving Show

data PersonInvalid = 
    NameEmpty
  | AgeTooLow
  | PersonInvalidUnknown String
  deriving (Eq, Show)

mkPerson :: Name
         -> Age
         -> Either PersonInvalid Person
mkPerson name age
  | name /= "" && age > 0 = Right $ Person name age
  | name == "" = Left NameEmpty
  | not (age > 0) = Left AgeTooLow
  | otherwise = Left $ PersonInvalidUnknown $
                  "Name was: " ++ show name ++
                  " Age was: " ++ show age

-- Your job is to write the following function without modifying
-- the code above.

gimmePerson :: IO ()
gimmePerson = undefined

-- Since IO () is about the least informative type imaginable, we’ll
-- tell what it should do.
-- 
--  a) It should prompt the user for a name and age input.
-- 
--  b) It should attempt to construct a Person value using the
--     name and age the user entered. You’ll need the read function 
--     for Age because it’s an Integer rather than a String.
-- 
--  c) If it constructed a successful person, it should print ”Yay!
--     Successfully got a person:” followed by the Person value.
-- 
--  d) If it got an error value, report that an error occurred and
--     print the error.