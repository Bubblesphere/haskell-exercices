-- Returns all integer factors of n using let
factors n = [a | a <- (let b = n in [2..quot n 2]), n `mod` a == 0]

-- Returns true if n is prime, otherwise returns all it's factors
isPrime n
  | foundFactors == [] = Left True
  | otherwise = Right foundFactors
  where foundFactors = factors n

-- Returns the number of negative int in a list
amountNegative listN = length [a | a <- listN, a < 0]