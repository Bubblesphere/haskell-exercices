-- Returns all integer factors of n using a comprehension list
factors n = [a | a <- (let b = n in [2..quot n 2]), n `mod` a == 0]