-- Replicate a char x times into a string
replicateChar n x = concat $ replicate n x

-- Apply a callback function to each tuples of an array passed as parameter
mapTuplesToCallback tuples callback = [callback a b  | (a, b) <- tuples]

disjoint a b 
  | length a == 0 || length b == 0 = False
  | otherwise = if c == d then
                  True
                else if c < d then
                  disjoint (drop 1 a) b
                else
                  disjoint a (drop 1 b)
                where (c, d) = (a !! 0, b !! 0)