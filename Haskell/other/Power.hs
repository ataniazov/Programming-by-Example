module Power where

power a 0 = 1
power a 1 = a
power a n =
  if even n
    then temp * temp
    else a * temp * temp
  where
    temp = power a (n `div` 2)
