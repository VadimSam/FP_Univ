cntNeg :: (Ord a, Num a) => [a] -> Int
cntNeg l = length (filter (>= 0) l)

dotProd :: Num a => [a] -> [a] -> a
dotProd a b = sum (zipWith (*) a b)

gMean :: (Floating a) => [a] -> a
gMean xs = product xs ** (1 / fromIntegral (length xs))

qsl :: Ord a => [a] -> [a]
qsl[] = []
qsl (p:xs) = qsl l ++ [p] ++ qsl g
    where
        l = filter (< p) xs
        g = filter (>= p) xs


cmpLE ::  Ord a =>  a -> a -> Bool
cmpLE x y = x <= y

cmpGE ::  Ord a =>  a -> a -> Bool
cmpGE x y = x >= y

qsp :: (a -> a -> Bool) -> [a] -> [a]
qsp _ [] = []
qsp f (x:xs) = l ++ [x] ++ r
    where
        l = qsp f (filter (f x) xs)
        r  = qsp f (filter (not . f x) xs)


rmEvenHOF :: [Integer] -> [Integer]
rmEvenHOF = filter odd