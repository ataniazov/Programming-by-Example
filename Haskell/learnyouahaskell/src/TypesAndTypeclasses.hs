module TypesAndTypeclasses where

typesAndTypeclasses :: IO ()
typesAndTypeclasses = do
  putStrLn "Types and Typeclasses"
  -- Haskell has a static type system
  -- ":t" examine the types of expressions
  -- :t 'a'
  -- 'a' :: Char
  -- :t True
  -- True :: Bool
  -- :t "HELLO!"
  -- "HELLO!" :: [Char]
  -- :t (True, 'a')
  -- (True, 'a') :: (Bool, Char)
  -- :t 4 == 5
  -- 4 == 5 :: Bool
  -- "::" has type of
  -- Int - integer
  let maxInt = maxBound :: Int
  print maxInt
  let minInt = minBound :: Int
  print minInt
  -- Integer - not bounded integer
  print $ factorial 50
  -- Float
  print $ circumference 4.0
  -- Double
  print $ circumference' 4.0
  -- Bool - boolean type
  print True
  print False
  -- Char
  print ['\NUL' .. '\DEL']
  print $ zip [0 ..] ['\NUL' .. '\DEL']
  -- String
  print "String"
  print ['S', 't', 'r', 'i', 'n', 'g']
  -- Tuple
  print () -- empty tuple
  print (1, "Tuple")
  print $ (,) 2 "Tuple"
  -- Type variables
  -- :t head
  -- head :: [a] -> a
  -- Functions that have type variables are called polymorphic functions.
  -- :t fst
  -- fst :: (a, b) -> a
  -- Typeclasses 101
  -- :t (==)
  -- (==) :: Eq a => a -> a -> Bool
  --  Everything before the => symbol is a class constraint.
  -- :t elem
  -- elem :: (Eq a, Foldable t) => a -> t a -> Bool
  -- Some basic typeclasses:
  -- Eq is used for types that support equality testing.
  print $ 5 == 5
  print $ 5 /= 5
  print $ 'a' == 'a'
  print $ "Ho Ho" == "Ho Ho"
  print $ 3.432 == 3.432
  -- Ord is for types that have an ordering.
  -- :t (>)
  -- (>) :: Ord a => a -> a -> Bool
  print $ "Abrakadabra" < "Zebra"
  print $ "Abrakadabra" `compare` "Zebra"
  print $ 5 >= 2
  print $ 5 `compare` 3
  -- Show can be presented as strings.
  print $ show 3
  print $ show 5.334
  print $ show True
  -- Read is sort of the opposite typeclass of Show.
  print $ read "True" || False
  print $ read "8.2" + 3.8
  print $ read "5" - 2
  print $ read "[1,2,3,4]" ++ [3]
  -- :t read
  -- read :: Read a => String -> a
  --print $ read "4"
  -- Use explicit type annotations
  --print $ read "5" :: Int   -- Do not work ¯\_(ツ)_/¯
  print (read "5" :: Int)
  print (read "5" :: Float)
  print $ (read "5" :: Float) * 4
  print (read "(3, 'a')" :: (Int, Char))
  -- Enum members are sequentially ordered types.
  -- (), Bool, Char, Ordering, Int, Integer, Float, Double.
  print $ ['a' .. 'e']
  --print $ [LT .. GT]
  print $ [3 .. 5]
  print $ succ 'B'
  print $ succ LT
  print $ succ EQ
  print $ pred GT
  print $ pred EQ
  -- Bounded members have an upper and a lower bound.
  print (minBound :: Int)
  print (maxBound :: Int)
  print (minBound :: Char)
  print (maxBound :: Char)
  print (maxBound :: Bool)
  print (minBound :: Bool)
  print (maxBound :: (Bool, Int, Char))
  -- Num is a numeric typeclass.
  -- :t 20
  -- 20 :: Num p => p
  print (20 :: Int)
  print (20 :: Integer)
  print (20 :: Float)
  print (20 :: Double)
  -- :t (*)
  -- (*) :: Num a => a -> a -> a
  --print $ (5 :: Int) * (6 :: Integer)
  print $ 5 * (6 :: Integer)
  -- Integral is also a numeric typeclass, includes Int and Integer
  -- Floating includes only floating point numbers, so Float and Double.
  -- :t fromIntegral
  -- fromIntegral :: (Num b, Integral a) => a -> b
  -- :t length
  -- length :: Foldable t => t a -> Int
  -- print $ (length [1,2,3,4]) + 3.2
  print $ fromIntegral (length [1, 2, 3, 4]) + 3.2

--  print $ read "[1,2,3,4]"
--removeNonUppercase :: [Char] -> [Char]
removeNonUppercase :: String -> String
removeNonUppercase st = [c | c <- st, c `elem` ['A' .. 'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- Integer
factorial :: Integer -> Integer
factorial n = product [1 .. n]

-- Float
circumference :: Float -> Float
circumference r = 2 * pi * r

-- Double
circumference' :: Double -> Double
circumference' r = 2 * pi * r