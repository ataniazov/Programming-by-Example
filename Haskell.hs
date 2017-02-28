module Haskell where

import Data.List
import System.IO

-- Comments

{-
MultiLine Comments
-}

-- Int -2^63

logo = do
  putStrLn "_____ ______"
  putStrLn "\\    \\\\     \\"
  putStrLn " \\    \\\\     \\"
  putStrLn "  \\    \\\\     \\ _____________"
  putStrLn "   \\    \\\\     \\\\            \\"
  putStrLn "    \\    \\\\     \\\\____________\\"
  putStrLn "     \\    \\\\     \\ _____________"
  putStrLn "     /    //      \\\\            \\"
  putStrLn "    /    //        \\\\____________\\"
  putStrLn "   /    //    /\\    \\"
  putStrLn "  /    //    /  \\    \\"
  putStrLn " /    //    /    \\    \\"
  putStrLn "/____//____/      \\____\\"
  putStrLn "   _    _           _        _ _"
  putStrLn "  | |  | |         | |      | | |"
  putStrLn "  | |__| | __ _ ___| | _____| | |"
  putStrLn "  |  __  |/ _` / __| |/ / _ \\ | |"
  putStrLn "  | |  | | (_| \\__ \\   <  __/ | |"
  putStrLn "  |_|  |_|\\__,_|___/_|\\_\\___|_|_|\n"


main = do
    let maxInt = maxBound :: Int
    print maxInt
    let minInt = minBound :: Int
    print minInt

-- Integer
-- Float
-- Double

    let bigFloat = 3.9999999999999 + 0.0000000000005
    print bigFloat

-- Bool: True False
-- Char
-- Tuple
    let always5 = undefined :: Int
    let always5 = 5
    print always5

    let sumOfNums = sum [1..1000]
    print sumOfNums

    let addEx = 5 + 4
    print addEx
    let subEx = 5 - 4
    print subEx
    let multEx = 5 * 4
    print multEx
    let divEx = 5 / 4
    print divEx
-- Prefix operator
    let modEx = mod 5 4
    print modEx
-- Infix operator
    let modEx2 = 5 `mod` 4
    print modEx2

    let negNumEx = 5 + (-4)
    print negNumEx

    let num9 = 9
    let sqrtOf9 = sqrt (fromInteger num9)
    print sqrtOf9

    -- Built in math functions
    putStrLn "piVal"
    let piVal = pi
    print piVal

    putStrLn "ePow9"
    let ePow9 = exp 9
    print ePow9

    putStrLn "logOf9"
    let logOf9 = log 9
    print logOf9

    putStrLn "squared9"
    let squared9 = 9 ** 2
    print squared9

    putStrLn "truncateVal"
    let truncateVal = truncate 9.999
    print truncateVal

    putStrLn "roundVal"
    let roundVal = round 9.999
    print roundVal

    putStrLn "ceilingVal"
    let ceilingVal = ceiling 9.999
    print ceilingVal

    putStrLn "floorVal"
    let floorVal = floor 9.999
    print floorVal

-- Also sin, cos, tan, asin, atan, acos, sinh,
-- tanh, cosh, asinh, atanh, acosh

    let trueAndFalse = True && False
    print trueAndFalse
    let trueOrFalse = True || False
    print trueOrFalse
    let notTrue = not(True)
    print notTrue

    -- List

    let primeNumbers = [3,5,7,11]
    print primeNumbers
    let morePrimes = primeNumbers ++ [13,17,19,23,29]
    print morePrimes

    let favNums = 2 : 7 : 21 : 66 : []
    print favNums

    let multList = [[3,5,7],[11,13,17]]
    print multList

    let morePrimes2 = 2 : morePrimes
    print morePrimes2
    let lenPrime = length morePrimes2
    print lenPrime

    let revPrime = reverse morePrimes2
    print revPrime

    let isListEmpty = null morePrimes2
    print isListEmpty

    let secondPrime = morePrimes2 !! 1
    print secondPrime

    let firstPrime = head morePrimes2
    print firstPrime

    let lastPrime = last morePrimes2
    print lastPrime

    let primeInit = init morePrimes2
    print primeInit

    let first3Primes = take 3 morePrimes2
    print first3Primes

    let removedPrimes = drop 3 morePrimes2
    print removedPrimes

    let is7InList = 7 `elem`  morePrimes2
    print is7InList

    let maxPrime = maximum morePrimes2
    print maxPrime

    let minPrime = minimum morePrimes2
    print minPrime

    let newList = [2,3,5]
    let prodPrimes = product newList
    print prodPrimes

    let zeroToTen = [0..10]
    print zeroToTen

    let evenList = [2,4..20]
    print evenList

    let letterList = ['A','C'..'Z']
    print letterList

--    let infinPow10 = [10,20..]
--    print infinPow10

    let many2s = take 10 (repeat 2)
    print many2s

    let many3s = replicate 10 3
    let cycleList = take 10 (cycle [1,2,3,4,5])
    print cycleList

