-- Replicate a char x times into a string
replicateChar n x = concat $ replicate n x

-- Apply a callback function to each tuples of an array passed as parameter
mapTuplesToCallback tuples callback = [callback a b  | (a, b) <- tuples]