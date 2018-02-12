-- Implement the zip function for two arrays
zipWith' a b c = [a d e | (d, e)<-(zip b c)]

-- Checks whether every element of an array matches a condition
all' a b = length (filter a b) == length b

-- Checks whether at least one element of an array matches a condition
any' a b = length (filter a b) > 0

-- Return the elements of the array that matches the condition
takeWhile' a b = filter a b 

-- Return the elements of the array that don't match the condition
dropWhile' a b = filter (not . a) b
