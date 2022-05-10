module Main where

printNLinesOfFile :: Int -> FilePath -> IO ()
printNLinesOfFile n filepath = do
    contents <- readFile filepath
    let linesOfFile = lines contents
    let nLines = take n linesOfFile
    mapM_ putStrLn nLines


main :: IO ()
main = do
    putStrLn "Path to file: "
    filepath <- getLine
    putStrLn "Number of lines: "
    n <- getLine
    printNLinesOfFile (read n) filepath