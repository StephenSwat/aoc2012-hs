import System.Environment

import Common

import qualified Problems.Day01
import qualified Problems.Day02
import qualified Problems.Day03

solutions :: [Day]
solutions = [Problems.Day01.solution, Problems.Day02.solution, Problems.Day03.solution]

main :: IO ()
main = do {
    args <- getArgs;
    let
        dayn = read (args !! 0) :: Int
        sols = solutions !! (dayn - 1)
        fnam = args !! 1
    in do {
        putStrLn ("Solutions for day " ++ show dayn);
        file <- readFile fnam;
        let (solA, solB) = sols in do {
            putStrLn . ("Problem A: " ++) . solA $ file;
            putStrLn . ("Problem B: " ++) . solB $ file;
        }
    }
}
