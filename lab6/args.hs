module Main where

import System.Environment ( getArgs )

main :: IO ()
main = do
    args <- getArgs
    putStrLn "The arguments are: "
    mapM_ putStrLn args