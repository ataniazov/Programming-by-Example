module SyntaxInFunctions where

syntaxInFunctions :: IO ()
syntaxInFunctions = do
  putStrLn "Syntax in Functions"
  -- Pattern matching
  print $ charName 'a'
  print $ charName 'b'
  --print $ charName 'h'
  let xs = [(1, 3), (4, 3), (2, 4), (5, 3), (5, 6), (3, 1)]
  print [a + b | (a, b) <- xs]
  print $ head' [4, 5, 6]
  print $ head' "Hello"
  --print $ head' []
  print $ length' "ham"
  print $ capital "Dracula"
  -- Guards, guards!
  print $ bmiTell' 24.3
  print $ bmiTell 85 1.90
  print $ bmiTell 70 1.62
  print $ 3 `myCompare` 2
  -- Where!?
  print $ initials "Nikola" "Tesla"
  let bmis = [(85, 1.90), (70, 1.62)]
  print $ calcBmis bmis
  -- Let it be
  print
    [ if 5 > 3
        then "Woo"
        else "Boo"
    , if 'a' > 'b'
        then "Foo"
        else "Bar"
    ]
  print $
    4 *
    (if 10 > 5
       then 10
       else 0) +
    2
  print
    [ let square x = x * x
       in (square 5, square 3, square 2)
    ]
  print
    ( let a = 100
          b = 200
          c = 300
       in a * b * c
    , let foo = "Hey "
          bar = "there!"
       in foo ++ bar)
  print $
    (let (a, b, c) = (1, 2, 3)
      in a + b + c) *
    100
  let zoot x y z = x * y + z
  print $ zoot 3 9 2
  --let boot x y z = x * y + z in boot 3 4 2
  --print $ boot

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors a b = (fst a + fst b, snd a + snd b)

addVectors' :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

head'' :: [a] -> a
head'' []    = error "Can't call head on an empty list, dummy!"
head'' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b
length' []     = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' []     = 0
sum' (x:xs) = x + sum' xs

capital :: String -> String
capital ""         = "Empty string, whoops!"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

bmiTell' :: (RealFloat a) => a -> String
bmiTell' bmi
  | bmi <= 18.5 = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
  | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a whale, congratulations!"

bmiTell'' :: (RealFloat a) => a -> a -> String
bmiTell'' weight height
  | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
  | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
  | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a whale, congratulations!"

max' :: (Ord a) => a -> a -> a
max' a b
  | a > b = a
  | otherwise = b

--max' :: (Ord a) => a -> a -> a
--max' a b | a > b = a | otherwise = b
myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
  | a > b = GT
  | a == b = EQ
  | otherwise = LT

bmiTell''' :: (RealFloat a) => a -> a -> String
bmiTell''' weight height
  | bmi <= 18.5 = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
  | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a whale, congratulations!"
  where
    bmi = weight / height ^ 2

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
  | bmi <= skinny = "You're underweight, you emo, you!"
  | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
  | bmi <= fat = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a whale, congratulations!"
  where
    bmi = weight / height ^ 2
    --(skinny, normal, fat) = (18.5, 25.0, 30.0)
    skinny = 18.5
    normal = 25.0
    fat = 30.0

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
  where
    (f:_) = firstname
    (l:_) = lastname

calcBmis' :: (RealFloat a) => [(a, a)] -> [a]
calcBmis' xs = [bmi w h | (w, h) <- xs]
  where
    bmi weight height = weight / height ^ 2

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2
   in sideArea + 2 * topArea

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

--calcBmis :: (RealFloat a) => [(a, a)] -> [a]
--calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0]
head' :: [a] -> a
head' xs =
  case xs of
    []    -> error "No head for empty lists!"
    (x:_) -> x

describeList :: [a] -> String
describeList xs =
  "The list is " ++
  case xs of
    []  -> "empty."
    [x] -> "a singleton list."
    xs  -> "a longer list."

describeList' :: [a] -> String
describeList' xs = "The list is " ++ what xs
  where
    what []  = "empty."
    what [x] = "a singleton list."
    what xs  = "a longer list."
