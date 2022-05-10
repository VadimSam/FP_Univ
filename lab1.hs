x = [1,2,3]
square :: Integer -> Integer
square x = x * x
valsign :: Integer -> Integer
valsign x = if x > 0 then 1
 else if x < 0  then -1
  else 0
heightC :: [Float] -> Float
heightC [a, b, c] = (2 * sqrt (p * (p - a) * (p - b) * (p - c))) / c
  where
    p = 0.5 * (a + b + c)