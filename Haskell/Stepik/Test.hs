module Test where

dist :: (Double, Double) -> (Double, Double) -> Double
dist p1 p2 = sqrt $ (fst p2 - fst p1) ^ 2  + (snd p2 - snd p1) ^ 2

fibonacci :: Integer -> Integer
fibonacci n
	| n == 0 = 0
	| n == 1 = 1
	| otherwise = fibonacci (n - 1) + fibonacci (n - 2)

fibonacci' :: Integer -> Integer
fibonacci' n = helper n 1 0

helper :: Integer -> Integer -> Integer -> Integer
helper n x y
	| n == 0 = y
	| n == 1 = x
	| otherwise = helper (n - 1) (x + y) x

fibonacci'' n = fibs!!n

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)


fibonacci''' :: Integer -> Integer
fibonacci''' n | n == 0 = 0 
           | n == 1 = 1
           | n == -1 = 1
           | n > 0 = helper' 0 1 n
           | n < 0 = (helper' 0 1 (abs n)) * (-1)^((-n)-1)
helper' :: Integer -> Integer -> Integer -> Integer 
helper' prev cur n | n == 1 = cur
                 | otherwise = helper' cur (prev+cur) (n-1)


seqA :: Integer -> Integer
seqA n
	| n < 0 = error "func. \"seq'\" works only with positive natural numbers!"
	| otherwise = helper n 2 1 2 3
		where helper n curr x y z = if n == curr then z else helper n (curr + 1) y z (z + y - (2 * x))

seqA' :: Integer -> Integer
seqA' n = let
  helper n curr x y z
    | n == 0 = x
    | n == 1 = y
    | n == curr = z
    | otherwise = helper n (curr + 1) y z (z + y - (2 * x))	
  in helper n 2 1 2 3

sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x
  | x < 0 = sum'n'count (abs x)
  | x == 0 = (0 , 1)
  | otherwise = (sumN x, countN x)
  where
    sumN x
      | x <= 9 = x
      | otherwise = (x `mod` 10) + sumN (x `div` 10)
    countN x = let
      count acc x
        | x == 0 = acc
        | otherwise = count (acc + 1) (x `div` 10)
      in count 0 x


integration' :: (Double -> Double) -> Double -> Double -> Double
integration' f a b = sum (map (f) [b,(a-b)/1000..a])

integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = integral f a b 1000 where
	integral f a b 0 = 0
	integral f a b n = h * (f (a) + f (a + h)) / 2 + integral f (a + h) b (n - 1) where h = (b - a) / n

swap' = uncurry (flip (,))
