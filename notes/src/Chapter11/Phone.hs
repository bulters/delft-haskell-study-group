module Chapter11.Phone where
  
-- 1. 
-- Create a data structure that captures the phone layout above.
-- The data structure should be able to express enough of how the
-- layout works that you can use it to dictate the behavior of the
-- functions in the following exercises.
-- 
-- fill in the rest.
data DaPhone = DaPhone


-- 2. Convert the following conversations into the keypresses required 
-- to express them. We’re going to suggest types and functions to fill 
-- in order to accomplish the goal, but they’re not obligatory. If 
-- you want to do it differently, go right ahead.
convo :: [String]
convo =
  [ "Wanna play 20 questions",
    "Ya",
    "U 1st haha",
    "Lol ok. Have u ever tasted alcohol",
    "Lol ya",
    "Wow ur cool haha. Ur turn",
    "Ok. Do u think I am pretty Lol",
    "Lol ya",
    "Just making sure rofl ur turn" ]

-- validButtons = "1234567890*#"
type Digit = Char

-- Valid presses: 1 and up
type Presses = Int

reverseTaps :: DaPhone -> Char -> [(Digit, Presses)]
reverseTaps = undefined
-- assuming the default phone definition
-- 'a' -> [('2', 1)]
-- 'A' -> [('*', 1), ('2', 1)]

cellPhonesDead :: DaPhone -> String -> [(Digit, Presses)]
cellPhonesDead = undefined

-- 3. How many times do digits need to be pressed for each message?
fingerTaps :: [(Digit, Presses)] -> Presses
fingerTaps = undefined

-- 4. What was the most popular letter for each message? What was
-- its cost? You’ll want to combine reverseTaps and fingerTaps to
-- figure out what it cost in taps. reverseTaps is a list because 
-- you need to press a different button in order to get capitals.
mostPopularLetter :: String -> Char
mostPopularLetter = undefined

-- 5
-- What was the most popular letter overall? What was the most
-- popular word?
coolestLtr :: [String] -> Char
coolestLtr = undefined

coolestWord :: [String] -> String
coolestWord = undefined