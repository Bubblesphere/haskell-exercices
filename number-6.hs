-- Write a function that removes every instance of a value within an array
remove a b = filter (\x -> x != a) b

-- Reduce ((λx.λy.(yx)λp.λq.p)λi.i)
((λx.λy.(yx)λp.λq.p)λi.i) => réduction
  ^^        ^^^^^^^
λy.(yλp.λq.p)λi.i => réduction
^^           ^^^^
λi.iλp.λq.p => réduction
^^^^
λp.λq.p

-- Reduce ((λf.λa.(fa)a)b)
((λf.λa.(fa)a)b) => Conversion alpha (empeche lambiguite)
     ^^   ^
((λd.λx.(fx)a)b) => réduction
  ^^        ^
(λx.(ax)b) => réduction
 ^^     ^
(ab)

-- Reduce (((λx.λy.λz.((xy)z)λf.λa(fa))λi.i)λj.j
(((λx.λy.λz.((xy)z)λf.λa(fa))λi.i)λj.j) => réduction
   ^^              ^^^^^^^^^
((λy.λz.((λf.λa(fa)y)z)λi.i)λj.j) => réduction
  ^^                   ^^^^
(λz.((λf.λa(fa)λi.i)z)λj.j) => réduction
 ^^                   ^^^^
((λf.λa(fa)λi.i)λj.j) => réduction
  ^^       ^^^^
λa(λi.ia)λj.j => réduction
^^       ^^^^
λi.iλj.j => réduction
^^^^^^^^
λj.j

-- Reduce λg.((gλh.(h(gλh.(hλg.(hg)))))g)
λg.((gλh.(h(gλh.(hλg.(hg)))))g)
λg.((gλh.(h(gλx.(xλg.(xg)))))g)
((gλh.(h(gλx.(xλg.(xg))))))

-- Which Gs are free
λg.((gλh.(h(gλh.(hλg.(hg)))))g)
     ^      ^                ^



