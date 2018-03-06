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
  --print (5 + "llama")
  --print (5 == True)
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
  --a = 1
  let a = 1
  print a
  let lostNumbers = [4, 8, 15, 16, 23, 42]
  print lostNumbers
  print ['h', 'e', 'l', 'l', 'o']
  print "world"
  -- ++ operator
  print $ [1, 2, 3, 4] ++ [9, 10, 11, 12]
  print $ "hello" ++ " " ++ "world"
  print $ ['w', 'o'] ++ ['o', 't']
  -- bad performance
  print $ [1, 2, 3] ++ [4]
  -- use cons (:) operator
  print $ 'A' : " SMALL CAT"
  print $ 5 : [1, 2, 3, 4, 5]
  print [1, 2, 3]
  print $ 1 : 2 : 3 : []
  -- [] empty list
  let alist = []
  print $ alist ++ [3] ++ [2]
  -- [], [[]], [[],[],[]]
  -- !! get an element out of a list by index
  print $ "Steve Buscemi" !! 6
  print $ [9.4, 33.2, 96.2, 11.2, 23.25] !! 1
  --print $ [9.4, 33.2, 96.2, 11.2, 23.25] !! 5
  let b = [[1, 2, 3, 4], [5, 3, 3, 3], [1, 2, 2, 3, 4], [1, 2, 3]]
  print b
  print $ b ++ [[1, 1, 1, 1]]
  print $ [6, 6, 6] : b
  print $ b !! 2
  print $ [3, 2, 1] > [2, 1, 0]
  print $ [3, 2, 1] > [2, 10, 100]
  print $ [3, 4, 2] > [3, 4]
  print $ [3, 4, 2] > [2, 4]
  print $ [3, 4, 2] == [3, 4, 2]
  -- basic functions that operate on lists
  -- head, tail, last, init
  print $ head [5, 4, 3, 2, 1]
  print $ tail [5, 4, 3, 2, 1]
  print $ last [5, 4, 3, 2, 1]
  print $ init [5, 4, 3, 2, 1]
  --print $ head $ tail [0]
  print $ head [0]
  print $ tail [0]
  print $ init [0]
  print $ last [0]
  -- length, null
  print $ length [5, 4, 3, 2, 1]
  print $ null [1, 2, 3]
  print $ null []
  -- reverse, take, drop
  print $ reverse [5, 4, 3, 2, 1]
  print $ take 3 [5, 4, 3, 2, 1]
  print $ take 1 [3, 9, 3]
  print $ take 5 [1, 2]
  print $ take 0 [6, 6, 6]
  print $ drop 3 [8, 4, 2, 1, 5, 6]
  print $ drop 0 [1, 2, 3, 4]
  print $ drop 100 [1, 2, 3, 4]
  -- minimum, maximum
  print $ minimum [8, 4, 2, 1, 5, 6]
  print $ maximum [1, 9, 2, 3, 4]
  -- sum, product, elem
  print $ sum [5, 2, 1, 6, 3, 2, 5, 7]
  print $ sum [-1, -2, -3, -4]
  print $ product [6, 2, 1, 2]
  print $ product [1, 2, 5, 6, 7, 9, 2, 0]
  -- elem
  print $ 4 `elem` [3, 4, 5, 6]
  print $ 10 `elem` [3, 4, 5, 6]
  print $ elem 1 []
  -- Texas ranges
  print [1 .. 20]
  print [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
  print ['a' .. 'z']
  print ['K' .. 'Z']
  -- ranges with step
  print [2,4 .. 20]
  print [3,6 .. 20]
  --print [20 .. 1]
  print [20,19 .. 1]
  print [0.1,0.3 .. 1]
  print [13,26 .. 24 * 13]
  print $ take 24 [13,26 ..]
  -- cycle, repeat, replicate
  print $ take 10 (cycle [1, 2, 3])
  print $ take 12 (cycle "LOL ")
  print $ take 10 (repeat 5)
  print $ replicate 3 10
  -- List comprehension
  print $ take 10 [2,4 ..]
  print [x * 2 | x <- [1 .. 10]]
  print [x * 2 | x <- [1 .. 10], x * 2 >= 12]
  print [x | x <- [50 .. 100], x `mod` 7 == 3]
  -- Note: weeding out lists by predicates is also called filtering.
  print $ boomBangs [7 .. 13]

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

-- [1,2,'a',3,'b','c',4]
boomBangs xs =
  [ if x < 10
    then "BOOM!"
    else "BANG!"
  | x <- xs
  , odd x
  ]
