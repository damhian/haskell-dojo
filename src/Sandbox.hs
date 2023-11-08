module Sandbox where
import GHC.Generics (S)

hello = "Hello there, this is the first string I've write in this variable called hello"

x::Int
x = 2

y::Float
y = 4.1

z::Char -- type
z = 'I' -- declaration variable

u :: () -- Unit type => return nothing
u = ()

-- Function Declaration

identity x = x

add x y = x + y

square x = x * x

isEven :: Int -> Bool -- type of the function which explain it will take Int as an input and return Bool as the output
isEven x = 
    if mod x 2 == 0 
        then True 
        else False -- function to check the number that has been input is even or odd

s :: String
s = "Hello, world"

type Pokemon = ([Char], Int) -- Type synonim

pikachu :: (String, Int) -- 2-tuple pair
pikachu = ("Pikachu", 25)

bulbasaur :: Pokemon
bulbasaur = ("Bulbasaur", 1)

squirtle :: Pokemon
squirtle = ("Squirtle", 7)

type Person = ([Char], Int) -- Type synonim

ian :: Person
ian = ("Ian", 23)

irfan :: Person
irfan = ("Irfan", 30)

data Color = Red | Green | Blue


c :: StarterPokemon
c = Charmander

-- Variant

data StarterPokemon = 
    Bulbasaur 
    | Charmander 
    | Squirtle 
    | Pikachu
    deriving (Eq, Show)

q :: StarterPokemon
q = Charmander

e :: Int
e = 9223372036854775807

getStarterPokemon :: String -> StarterPokemon
-- conditional with if else
-- getStarterPokemon t = 
--     if t == "grass"
--         then Bulbasaur
--         else if t == "fire"
--             then Charmander
--             else if t == "water"
--                 then Squirtle
--                 else Pikachu

-- conditional with guards
-- getStarterPokemon t 
--     | t == "grass"  = Bulbasaur
--     | t == "fire"   = Charmander
--     | t == "water"  = Squirtle
--     | otherwise     = Pikachu

-- case expression
getStarterPokemon t = case t of
   "fire"   -> Bulbasaur
   "water"  -> Squirtle
   "grass"  -> Squirtle
   _        -> Pikachu

-- list
r :: [Int]
r = [1, 2, 3, 4]

t :: [Char]
t = ['a', 'b', 'c', 'd', 'e']

party :: [String]
party = ["Bulbasaur", "Charmander", "Charizard", "Wartortle", "Magikarp"]
--     = "Bulbasaur" : ("Charmander" : ("Charizard" : ("Wartortle" : ("Magikarp" :[])))) -- it is raw reprensentation of the lists
