module SyntaxInFunctions where

syntaxInFunctions :: IO ()
syntaxInFunctions = do
  putStrLn "Syntax in Functions"
  -- Pattern matching

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"
