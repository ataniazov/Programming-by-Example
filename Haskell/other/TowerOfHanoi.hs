module TowerOfHanoi where

towerOfHanoi n from to aux
  | n == 1 = "\nMove disk 1 from rod " ++ from ++ " to rod " ++ to
  | otherwise =
    towerOfHanoi (n - 1) from aux to ++
    "\nMove disk " ++
    show (n) ++
    " from rod " ++ from ++ " to rod " ++ to ++ towerOfHanoi (n - 1) aux to from
