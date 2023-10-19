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

_SEP_ = undefined

-- Q#06

data Square

-- Q#07

data GameState

-- Q#08

-- Q#09

getFirstPlayer = undefined

getFirstPlayer_ = undefined

-- Q#10

showGameState = undefined

-- Q#11

switchPlayer = undefined

-- Q#12

showSquare = undefined