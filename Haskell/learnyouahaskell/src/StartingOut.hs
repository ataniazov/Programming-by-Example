module StartingOut where

startingOut :: IO ()
startingOut = do
  putStrLn "Starting Out"
  -- stack ghci
  -- Prelude> -> ghci>
  -- :set prompt "ghci> "
  print (2 + 15)
  print (49 * 100)
  print (1892 - 1472)
  print (5 / 2)
  print ((50 * 100) - 4999)
  print (50 * 100 - 4999)
  print (50 * (100 - 4999))
  print (5 * (-3))
  print (True && False)
  print (True && True)
  print (False || True)
  print (not False)
  print (not (True && True))
  print (5 == 5)
  print (1 == 0)
  print (5 /= 5)
  print (5 /= 4)
  print ("hello" == "hello")
  print (5 + 4.0)
  -- multiply (*) infix function
  print (succ 8)
--  print (5 + "llama")
--  print (5 == True)
  print (min 9 10)
  print (min 3.4 3.2)
  print (max 100 101)
  -- Function application
  print (succ 9 + max 5 4 + 1)
  print ((succ 9) + (max 5 4) + 1)
  print (succ 9 * 10)
  print (succ (9 * 10))
  -- div - integral division
  print (div 92 10)
  print (92 `div` 10)
  print (92 / 10)
