module Main where

heightC :: (Float, Float, Float) -> Float
heightC (a,b,c) = (2 * sqrt (p * (p - a) * (p - b) * (p - c))) / c
  where
    p = 0.5 * (a + b + c)

main :: IO ()
main = do
  putStrLn "Enter three sides of triangle:"
  a <- readLn :: IO Float
  b <- readLn :: IO Float
  c <- readLn :: IO Float
  putStrLn $ "Height of triangle is " ++ show (heightC (a,b,c))