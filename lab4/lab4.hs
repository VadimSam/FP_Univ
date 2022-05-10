newtype Suit = Suit String deriving (Eq, Ord, Show)
newtype Rank = Rank String deriving (Eq, Ord, Show)
newtype PlayingCard = PlayingCard (Rank, Suit) deriving (Eq, Ord, Show)

tenhearts :: PlayingCard
tenhearts = PlayingCard (Rank "10", Suit "Hearts")

twospades :: PlayingCard
twospades = PlayingCard (Rank "2", Suit "Spades")

isMinor :: PlayingCard -> Bool
isMinor (PlayingCard (Rank "2", _)) = True
isMinor (PlayingCard (Rank "3", _)) = True
isMinor (PlayingCard (Rank "4", _)) = True
isMinor (PlayingCard (Rank "5", _)) = True
isMinor (PlayingCard (Rank "6", _)) = True
isMinor (PlayingCard (Rank "7", _)) = True
isMinor (PlayingCard (Rank "8", _)) = True
isMinor (PlayingCard (Rank "9", _)) = True
isMinor (PlayingCard (Rank "10", _)) = True
isMinor _ = False

isSameSuit :: PlayingCard -> PlayingCard -> Bool
isSameSuit (PlayingCard (_, Suit s)) (PlayingCard (_, Suit s')) = s == s'

beats :: PlayingCard -> PlayingCard -> Bool
beats (PlayingCard (Rank r1, _)) (PlayingCard (Rank r2, _)) = (read r1::Integer) > (read r2 :: Integer)

beatsTrump :: Suit -> PlayingCard -> PlayingCard -> Bool
beatsTrump trumpSuit (PlayingCard (Rank r1, Suit s1)) (PlayingCard (Rank r2, Suit s2))
  | Suit s1 == trumpSuit && Suit s2 /= trumpSuit = True
  | Suit s2 == trumpSuit && Suit s1 /= trumpSuit = False
  | Suit s1 == trumpSuit && trumpSuit == Suit s2 = beats (PlayingCard (Rank r1, Suit s1)) (PlayingCard (Rank r2, Suit s2))
  | otherwise = False
  
beatsList :: Suit -> [PlayingCard] -> PlayingCard -> [Bool]
beatsList trumpSuit toBeat card = map (beatsTrump trumpSuit card) toBeat
