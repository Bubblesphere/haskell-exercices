import Data.Char as Char

-- Manually implement the map function
customMap fnc arr = [fnc a | a <- arr]

-- Using the previously created map function and a lambda,
-- capitalize the first letter of each item within the array
capitalizeArray arr = customMap (\x -> [toUpper (head x)] ++ tail x) arr