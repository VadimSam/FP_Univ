module Main where

main :: IO ()
main = do
    putStrLn "a="
    a <- getLine
    putStrLn "b="
    b <- getLine
    putStrLn "a+b="
    print (read a + read b)