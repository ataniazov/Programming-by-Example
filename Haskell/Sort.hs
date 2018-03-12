module Sort where

-- Merge sort
mergesort :: Ord a => [a] -> [a]
mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort left) (mergesort right)
  where
    left = take (length xs `div` 2) xs
    right = drop (length xs `div` 2) xs
    merge :: Ord a => [a] -> [a] -> [a]
    merge xs [] = xs
    merge [] ys = ys
    merge (x:xs) (y:ys)
      | x <= y = x : merge xs (y : ys)
      | otherwise = y : merge (x : xs) ys

-- Bubble sort
bubblesort :: Ord a => [a] -> [a]
bubblesort xs = bubblesortIter xs 0
  where
    bubblesort' :: Ord a => [a] -> [a]
    bubblesort' [] = []
    bubblesort' [x] = [x]
    bubblesort' (x:y:ys)
      | x <= y = x : bubblesort' (y : ys)
      | otherwise = y : bubblesort' (x : ys)
    bubblesortIter :: Ord a => [a] -> Int -> [a]
    bubblesortIter xs i
      | i == length xs = xs
      | otherwise = bubblesortIter (bubblesort' xs) (i + 1)

-- Insertion sort
insertionsort :: Ord t => [t] -> [t]
insertionsort xs = insertionsort' [] xs
  where
    insertionsort' :: Ord t => [t] -> [t] -> [t]
    insertionsort' x []     = x
    insertionsort' x (y:ys) = insertionsort' (insert' y x) ys
    insert' :: Ord t => t -> [t] -> [t]
    insert' x [] = [x]
    insert' x (y:ys)
      | x <= y = x : y : ys
      | otherwise = y : insert' x ys