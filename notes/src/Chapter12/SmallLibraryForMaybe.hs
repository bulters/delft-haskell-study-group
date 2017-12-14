module Chapter12.SmallLibraryForMaybe where

-- Write the following functions. This may take some time.

-- 1. Simple boolean checks for Maybe values.
isJust :: Maybe a -> Bool
isJust = undefined

isNothing :: Maybe a -> Bool
isNothing = undefined

-- 2. The following is the Maybe catamorphism. You can turn a Maybe
-- value into anything else with this.

-- >>> mayybee 0 (+1) Nothing
-- 0
-- >>> mayybee 0 (+1) (Just 1)
-- 2
mayybee :: b -> (a -> b) -> Maybe a -> b
mayybee = undefined

-- 3. In case you just want to provide a fallback value.

-- >>> fromMaybe 0 Nothing
-- 0
-- >>> fromMaybe 0 (Just 1)
-- 1
fromMaybe :: a -> Maybe a -> a
fromMaybe = undefined

-- 4. Converting between List and Maybe.

-- >>> listToMaybe [1, 2, 3]
-- Just 1
-- >>> listToMaybe []
-- Nothing
listToMaybe :: [a] -> Maybe a
listToMaybe = undefined


-- 5. For when we want to drop the Nothing values from our list.

-- >>> catMaybes [Just 1, Nothing, Just 2]
-- [1, 2]
-- >>> let xs = take 3 $ repeat Nothing
-- >>> catMaybes xs
-- []
catMaybes :: [Maybe a] -> [a]
catMaybes = undefined

-- 6. You’ll see this called “sequence” later.

-- >>> flipMaybe [Just 1, Just 2, Just 3]
-- Just [1, 2, 3]
-- >>> flipMaybe [Just 1, Nothing, Just 3]
-- Nothing
flipMaybe :: [Maybe a] -> Maybe [a]
flipMaybe = undefined