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

facsList :: Integer -> [Integer] -- Задача 1. Всё гениальное просто! Применил генератор списков. (Липовача стр. 37)
facsList n = [fac x | x <- [1..n]]

rmEven :: [Integer] -> [Integer]
rmEven l = [x | x <- l, odd x]