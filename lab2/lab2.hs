import GHC.Real (Fractional)
-- Комментарий в одну сторку
{-
А
это
многосторчный
-}

fac :: Integer -> Integer
fac n = if n == 0 then 1 else n * fac(n - 1)

aToB :: Integer -> Integer
aToB x = case x of
 0 -> 1
 1 -> 5
 2 -> 2
 _ -> -1

facpcs :: Integer -> Integer
facpcs 0 = 1
facpcs n = n * facpcs(n - 1)

len :: Num p => [a] -> p -- Тип брал из GHCi
len [] = 0
len(x:xs) = 1 + len xs

sumPair :: Num a => (a, a) -> a
sumPair p = fst p + snd p

sumTriple :: Num a => (a, a, a) -> a
sumTriple (x,y,z) = x + y + z


nList :: Integer -> [Integer]
nList n = [1..n]

nevenList :: Integer -> [Integer]
nevenList n = [2,4..2*n]

noddList :: Integer -> [Integer]
noddList n = [1,3..2*n]

ncubesList :: Integer -> [Integer]
ncubesList n = [x ^ 3| x  <- [1..n]]

nfacList :: Integer -> [Integer]
nfacList n = [fac x | x <- [1..n]]

tenpowList :: Integer -> [Integer]
tenpowList n = [10 ^ x | x <- [1..n]]

triangularnList :: Double  -> [Double]
triangularnList n = [(x * (x + 1))/2.0  | x <- [1..n]]

rmEven :: [Integer] -> [Integer]
rmEven l = [x | x <- l, odd x]