module Main where

-- Single-line comment

{-
   Multi-line comment
-}

-- importing moludes
import Data.List
import System.IO

-- Int
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Integer

-- Float
-- Double

bigFloat = 3.99999999999 + 0.00000000005
bigFloat' = 3.99999999999 + 0.000000000005

-- Bool True False
-- Char '
-- Tuple

-- Constant
always5 :: Int
always5 = 5

sumOfNums = sum [1..1000]

addEx = 5 + 4
subEx = 5 - 4
multEx = 5 * 4
divEx = 5 / 4

-- Prefix operator
modEx = mod 5 4

-- Infix operator
modEx' = 5 `mod` 4

negNumEx = 5 + (-4)

{-
Prelude> :t sqrt
sqrt :: Floating a => a -> a
-}

-- Int to Floating
num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)

-- Built in math functions

piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

-- sin, cos, tan, asin, atan , acos, sinh,
-- tanh, cosh, asinh, atanh, acosh

trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not True

{-
Prelude> :t (+)
(+) :: Num a => a -> a -> a

Prelude> :t truncate
truncate :: (Integral b, RealFrac a) => a -> b
-}

-- Lists

primeNumbers = [3,5,7,11]

morePrimes = primeNumbers ++ [13,17,19,23,29]

favNums = 2 : 7 : 21 : 66 : []

multList = [[3,5,7],[11,13,17]]

morePrimes' = 2 : morePrimes

lenPrime = length morePrimes'

revPrime = reverse morePrimes'

isListEmpty = null morePrimes'

secondPrime = morePrimes' !! 1

firstPrime = head morePrimes'

lastPrime = last morePrimes'

primeInit = init morePrimes'

first3Primes = take 3 morePrimes'

removePrimes = drop 3 morePrimes'

is7InList = 7 `elem` morePrimes'

maxPrime = maximum morePrimes'

minPrime = minimum morePrimes'

sumOfPrimes = sum morePrimes'

prodPrimes = product morePrimes'

zeroToTen = [0..10]

evenList = [2,4..20]

letterList = ['A','C'..'Z']

-- infinite list
-- infinPow10 = [10,20..]

many2s = take 10 (repeat 2)

many3s = replicate 10 3

cycleList = take 10 (cycle [1,2,3,4,5])

listTimes2 = [x * 2 | x <- [1..10]]

listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 20]

divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]

sortedList = sort [9,1,8,3,4,7,6]

sumOfLists = zipWith (+) [1..5] [6..10]

listBiggerThan5 = filter (>5) morePrimes'

evensUpTo20 = takeWhile (<= 20) [2,4..]

acc = 1
multOfListLeft = foldl (*) acc [2,3,4,5]
multOfListRight = foldr (*) acc [2,3,4,5]

-- List comprehension

pow3List = [3^n | n <- [1..10]]

multTable = [[x * y | y <- [1..10]] | x <- [1..10]]


-- Tuples

randTuple = (1, "Random Tuple")

bobSmith = ("Bob Smith", 52)

bobsName = fst bobSmith

bobsAge = snd bobSmith

names = ["Bob", "Mary", "Tom"]
addresses = ["123 Main" , "234 North", "567 South"]

namesNAddress = zip names addresses

{-
Prelude> let num7 = 7
Prelude> let getTriple x = x * 3
Prelude> getTriple num
-}

-- Function MUST begin with lower case letter
addMe :: Int -> Int -> Int

-- funcName param1 param2 = operation (returned value)

addMe x y = x + y

sumMe x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)

whatAge :: Int -> String

whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You're an adult"
whatAge _ = "Nothing Important"


-- Recursion

factorial :: Int -> Int

factorial 0 = 1
factorial n = n * factorial (n - 1)

fac n = product [1..n]

-- Guards

isOdd :: Int -> Bool
isOdd n
    | n `mod` 2 == 0 = False
    | otherwise = True

isEven n = n `mod` 2 == 0

whatGrade :: Int -> String
whatGrade age
    | (age > 0) && (age <= 4) = "Nothing important"
    | (age > 4) && (age <= 6) = "Kindergarten"
    | (age > 6) && (age <= 10) = "Elementary School"
    | (age > 10) && (age <= 14) = "Middle School"
    | (age > 14) && (age <= 18) = "High School"
    | otherwise = "Go to college"

batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
    | avg <= 0.200 = "Terrible Batting Average"
    | avg <= 0.250 = "Average Player"
    | avg <= 0.280 = "Your doing pretty good"
    | otherwise = "You're a Superstar"
    where avg = hits / atBats

getListItems :: [Int] -> String
getListItems [] = "Your list is empty"
getListItems (x:[]) = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "The 1st item is " ++ show x ++ "and the rest are " ++ show xs

-- Pattern
getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++ [x]

-- High Order Functions
times4 :: Int -> Int
times4 x = x * 4

listTimes4 = map times4 [1..5]

multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

{-
[1,2,3,4] : x = 1 | xs = [2,3,4]
[2,3,4] : x = 2 | xs = [3,4]
[3,4] : x = 3 | xs = [4]
[4] : x = 4 | xs = []

[4,8,12,16]
-}

areStringEq :: [Char] -> [Char] -> Bool
areStringEq [] [] = True
areStringEq (x:xs) (y:ys) = x == y && areStringEq xs ys
areStringEq _ _ = False

doMult :: (Int -> Int) -> Int
doMult func = func 3

num3Times4 = doMult times4

getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y

adds3 = getAddFunc 3

fourPlus3 = adds3 4

threePlusList = map adds3 [1..5]

-- Lambda

dbl1To10 = map (\x -> x * 2) [1..10]

{-
< > <= >= == /=
&& || not
-}

doubleEvenNumber y =
  if (y `mod` 2 /= 0)
  then y
  else y * 2

getClass :: Int -> String
getClass n = case n of
  5 -> "Go to Kindergarten"
  6 -> "Go to Elementary School"
  _ -> "Go away"

{-
module SampFunctions (getClass, doubleEvenNumbers) where

import SampFunctions
-}

-- Enums

data BaseballPlayer = Pitcher
                    | Catcher
                    | Infielder
                    | Outfield
                deriving Show

barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True

barryInOF = print(barryBonds Outfield)

-- Custom type

data Customer = Customer String String Double
    deriving Show

tomSmith :: Customer
tomSmith = Customer "Tom Smith" "123 Main" 20.50

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b

-- Rock Paper Scissors

data RPS = Rock | Paper | Scissors
shoot :: RPS -> RPS -> String
shoot Paper Rock = "Paper Beats Rock"
shoot Rock Scissors = "Rock Beats Scissors"
shoot Scissors Paper = "Scissors Beat Paper"
shoot Scissors Rock = "Scissors Loses to Rock"
shoot Paper Scissors = "Paper Loses to Scissors"
shoot Rock Paper = "Rock Loses to Paper"
shoot _ _ = "Error"

data Shape = Circle Float Float Float | Rectangle Float Float Float Float
    deriving Show

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x y x2 y2) = (abs $ x2 - x) * (abs $ y2 - y)

areaOfCircle = area (Circle 50 60 20)
areaOfRect = area $ Rectangle 10 10 100 100

sumValue = putStrLn (show (1 +2))
sumValue' = putStrLn . show $ 1 + 2

-- Type Classes
{-
Num Eq Or Show

(+) Num

Prelude> :t (+)
-}

data Employee = Employee { name :: String, position :: String, idNum :: Int
                         } deriving (Eq, Show)

samSmith = Employee {name = "Sam Smith", position = "Manager", idNum = 1000}
pamMarx = Employee {name = "Pam Marx", position = "Sales", idNum = 1001}

isSamPam = samSmith == pamMarx

samSmithData = show samSmith

data ShirtSize = S | M | L
instance Eq ShirtSize where
    S == S = True
    M == M = True
    L == L = True
    _ == _ = False

instance Show ShirtSize where
    show S = "Small"
    show M = "Medium"
    show L = "Large"

smallAvail = S `elem` [S, M, L]

theSize = show S

class MyEq a where
    areEqual :: a -> a -> Bool

instance MyEq ShirtSize where
    areEqual S S = True
    areEqual M M = True
    areEqual L L = True
    areEqual _ _ = False

newSize = areEqual M M

sayHello = do
    putStrLn "What's your name"
    name <- getLine
    putStrLn $ "Hello " ++ name

writeToFile = do
    theFile <- openFile "test.txt" WriteMode
    hPutStrLn theFile ("Random line of text")
    hClose theFile

readFromFile = do
    theFile2 <- openFile "test.txt" ReadMode
    contents <- hGetContents theFile2
    putStr contents
    hClose theFile2

-- Fibonacci Numbers

fib = 1 : 1 : [a + b | (a, b) <- zip fib (tail fib)]

fib300 = fib !! 300

fib20 = take 20 fib