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
isEven x = if mod x 2 == 0 then True else False -- function to check the number that has been input is even or odd

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

data StarterPokemon = Bulbasaur | Charmander | Squirtle

c :: StarterPokemon
c = Charmander