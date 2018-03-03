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
  -- print (5 + "llama")
  -- print (5 == True)
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
  -- Baby's first functions
  -- baby.hs
  -- :l baby
  print (doubleMe 9)
  print (doubleMe 8.3)
  print (doubleUs 4 9)
  print (doubleUs 2.3 34.2)
  print (doubleUs 28 88 + doubleMe 123)
  -- An intro to lists
  -- Lists are a homogenous data structure,
  -- it stores several elements of the same type.
  print (lostNumbers)

doubleMe x = x + x

--doubleUs x y = x * 2 + y * 2
--doubleUs x y = x + x + y + y
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x =
  if x > 100
    then x
    else x * 2

-- Expression is a piece of code that returns a value.
doubleSmallNumber' x =
  (if x > 100
     then x
     else x * 2) +
  1

-- Use ' to either denote a strict version of a function (one that isn't lazy)
-- or a slightly modified version of a function or a variable.
-- Function that doesn't take any parameters is a definition (or a name).
conanO'Brien = "It's a-me, Conan O'Brien!"

lostNumbers = [4, 8, 15, 16, 23, 42]
