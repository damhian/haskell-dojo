module TTT.A1 where

import Data.Char (toUpper)

-- Q#01

_SIZE_ :: Int --Type signature for _SIZE_
_SIZE_ = 3 -- Declaration of _SIZE_

-- Q#02

_DISPLAY_LOGO_ :: Bool -- Type for _DISPLAY_LOGO_
_DISPLAY_LOGO_ = True

-- Q#03

convertRowIndex :: Char -> Int
convertRowIndex rowIndex = (fromEnum (toUpper rowIndex)) - 65

-- Q#04

_INVALID_MOVE_ :: (Int, Int) -- Solution using tuples
_INVALID_MOVE_ = (-1, -1)
 
-- Q#05

_SEP_ :: String
_SEP_ = "_|_"

-- Q#06

data Square = X | O | Empty deriving (Show, Eq)

-- Q#07

data GameState = XWon | OWon | Tie | InProgress deriving (Show, Eq)

-- Q#08

type Player = Square
type Row    = [Square]
type Line   = [Square]
type Board  = [Row]
type Move   = (Int, Int)

-- Q#09

getFirstPlayer :: Bool -> Player
getFirstPlayer True = X
getFirstPlayer False = O

getFirstPlayer_:: Bool -> Player
getFirstPlayer_ b 
    | b         = X
    | otherwise = O

-- Q#10

showGameState :: GameState -> String
showGameState gameState = case gameState of
    XWon        -> "Player X won the game."
    OWon        -> "Player O won the game."
    Tie         -> "The game is tie."
    InProgress  -> "The game is in progress."

-- Q#11

switchPlayer :: Player -> Player
switchPlayer X = O
switchPlayer O = X
switchPlayer Empty = Empty

-- Q#12

showSquare :: Square -> String
-- showSquare X = "X"
-- showSquare O = "O"
-- showSquare Empty = "_"

showSquare sq = case lookup sq squareMapping of
        Just str -> str
        Nothing -> "_"
    where
        squareMapping = [(X, "X"), (O, "O"), (Empty, "_")]