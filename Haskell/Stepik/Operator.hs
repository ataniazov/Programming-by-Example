module Operator where

infixl 6 *+*
--(*+*) a b = a ^ 2 + b ^ 2

a *+* b = a ^ 2 + b ^ 2

a |-| b = if a - b > 0 then a - b else b - a
