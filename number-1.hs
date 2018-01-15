-- write a function returning the largest common divider between a & b
lcd a b = 
  if a == b then
    a
  else if a > b then
    lcd (a-b) b
  else
    lcd (b-a) a

-- write a function returning the largest common divider w/ a list of its args
lcdWithArguments a b = (a, b, lcd a b)

-- write a function returning all pairs of two elements with a sum of n
pairsReturningN n = [(a, b) | a<-[0..n], b<-[0..n], a+b==n]