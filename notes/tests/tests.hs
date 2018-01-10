module Main where

import qualified Chapter14.WordNumberTest
import qualified Chapter14.QuickCheck

main :: IO ()
main = do 
  Chapter14.WordNumberTest.main
  Chapter14.QuickCheck.main