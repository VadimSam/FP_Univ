data List a = Nil | Cons a (List a) deriving (Show, Read, Eq, Ord)

headList :: List a -> a
headList (Cons x _) = x
headList Nil = error "headList: empty list"

tailList :: List a -> List a
tailList (Cons _ xs) = xs
tailList Nil = error "tailList: empty list"

lengthList :: List a -> Int
lengthList Nil = 0
lengthList (Cons _ xs) = 1 + lengthList xs

nthList :: List a -> Int -> a
nthList (Cons x _) 1 = x
nthList (Cons _ xs) n = nthList xs (n-1)
nthList Nil _ = error "nthList: empty list"

rmNegative :: List Int -> List Int
rmNegative Nil = Nil
rmNegative (Cons x xs) =
    if x < 0
    then rmNegative xs
    else Cons x (rmNegative xs)

toMyList :: [a] -> List a
toMyList = foldr Cons Nil

toStdList :: List a -> [a]
toStdList Nil = []
toStdList (Cons x xs) = x : toStdList xs