{--
---  Ata Niyazov 130201108
---  Programlama Dilleri Prensipleri
---  Ödev 1
---  Luhn algoritması
--}

module Main where
  -- Convert Integer into list of digits
  numToList :: Integer -> [Integer]
  numToList 0   = []
  numToList num = reverseList $ numToList' num

  -- Convert Integer into reversed list of digits
  numToList' :: Integer -> [Integer]
  numToList' 0   = []
  numToList' num = (num `mod` 10) : numToList' (num `div` 10)

  -- Reverse a list
  reverseList :: [Integer] -> [Integer]
  reverseList []     = []
  reverseList (x:xs) = reverseList xs ++ [x]

  -- Sum of list elements
  sumOfList :: [Integer] -> Integer
  sumOfList []     = 0
  sumOfList (x:xs) = sumOfList xs + x

  -- Check numbers last digit is zero
  isLastZero :: Integer -> Bool
  isLastZero num = (num `mod` 10) == 0

  -- Each second from end
  eachScndFrmEnd :: [Integer] -> [Integer]
  eachScndFrmEnd []     = []
  eachScndFrmEnd (x:xs) = reverseList $ eachSecond $ reverseList (x:xs)

  -- Each second element multByTwo
  eachSecond :: [Integer] -> [Integer]
  eachSecond []       = []
  eachSecond [x]      = [x]
  eachSecond (x:y:xs) = x : multByTwo y : eachSecond xs

  -- Multiply by two. If product greater than 9 then subtract by 9
  multByTwo :: Integer -> Integer
  multByTwo num = if (num * 2) > 9 then (num * 2) - 9 else num * 2

  -- Explain how this works
  explain::IO()
  explain = do
    putStr "Let's say our IMEI is "
    let imei' = 79927398713
    print imei'
    putStrLn "First we need to convert our IMEI(Integer) to List:"
    print $ numToList imei'
    putStrLn "After we need to multiply each second element from end by 2"
    putStrLn "If multiplication result is greater than 9 then subtract by 9:"
    print $ eachScndFrmEnd $ numToList imei'
    putStrLn "Then take sum of list:"
    print $ sumOfList $ eachScndFrmEnd $ numToList imei'
    putStrLn "And check if last digit of the sum is zero:"
    print $ isLastZero $ sumOfList $ eachScndFrmEnd $ numToList imei'
    putStrLn "If it is zero then your IMEI is VALID otherwise NOT."
    putStrLn ""

  -- Our final function:
  -- Is IMEI valid?
  isLuhnValid :: Integer -> Bool
  isLuhnValid 0    = False
  isLuhnValid imei = isLastZero $ sumOfList $ eachScndFrmEnd $ numToList imei

  -- Each first from end
  eachFrstFrmEnd :: [Integer] -> [Integer]
  eachFrstFrmEnd []     = []
  eachFrstFrmEnd (x:xs) = reverseList $ eachFirst $ reverseList (x:xs)

  -- Each first element multByTwo
  eachFirst :: [Integer] -> [Integer]
  eachFirst []       = []
  eachFirst [x]      = [x]
  eachFirst (x:y:xs) = multByTwo x : y : eachFirst xs

  -- Calculation of the check digit
  calcLuhn :: Integer -> Integer
  calcLuhn num
      | isLuhnValid num = num
      | num < 91 = 0
      | otherwise =
        num * 10 +
          (9 * sumOfList (eachFrstFrmEnd $ numToList num) `mod` 10)

  -- For interactive IMEI validation:
  -- Validate entered IMEI
  validate::IO()
  validate = do
    putStrLn "Please enter your IMEI number: "
    inputjar <- getLine
    let imei = read inputjar :: Integer
    putStr "Your entered "
    putStr $ show imei
    putStr " IMEI number is "
    putStrLn $ if isLuhnValid imei then "VALID" else "NOT VALID"

  -- Print Stundent identity
  studentID::IO()
  studentID = do
    putStrLn "Ata Niyazov 130201108"
    putStrLn ""
    putStrLn "Programlama Dilleri Prensipleri"
    putStrLn "Ödev 1: Luhn algoritması"
    putStrLn ""

  -- This is where the magic happens;)
  -- Main function
  main::IO()
  main = do
    studentID
    explain
    putStrLn "Try it yourself:"
    validate
