module Main where
import Data.ByteString ( putStrLn, readFile, take, getLine, pack )
import System.Posix (fileAccess)

main :: IO ()
main = do
    Prelude.putStrLn  "Enter the file name: "
    path <- Prelude.getLine
    file <- Prelude.readFile path
    Prelude.putStrLn file