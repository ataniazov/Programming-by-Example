module Main where

--import Lib
import           Introduction
import           StartingOut

main :: IO ()
--main = someFunc
main = do
  putStrLn "Hello, World!"
  introduction
  startingOut
