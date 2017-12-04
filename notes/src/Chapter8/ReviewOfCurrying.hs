module Chapter8.ReviewOfCurrying where

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

-- fill in the types

flippy = flip cattyConny

appedCatty = cattyConny "woops"

frappe = flippy "haha"

-- ! 1.
-- What is the value of appedCatty "woohoo!" ? Try to determine the
-- answer for yourself, then test in the REPL.

-- ! 2.
-- frappe "1"

-- ! 3.
-- frappe (appedCatty "2")

-- 4.
-- appedCatty (frappe "blue")

-- 5.
-- cattyConny (frappe "pink")
--            (cattyConny "green" (appedCatty "blue"))

-- 6.
-- cattyConny (flippy "Pugs" "are") "awesome"

