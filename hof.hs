module Hof_exercise where
  import Prelude hiding(map, filter, foldl)

  --Recursive map function
  map:: (a -> b) -> [a] -> [b]
  map f [] = []
  map f (h:t) = (f h) : map f (t)

  --Recursive filter function
  filter:: (a -> Bool) -> [a] -> [a]
  filter f [] = []
  filter f (h:t)
      | f h == True = h : filter f (t)
      | otherwise = filter f (t)
 
  --isDiv2 used for testing filter
  isDiv2 x = if mod x 2 == 0 then True else False

  --Recursive foldl1 function
  foldl1:: (a -> a -> a) -> [a] -> a
  --foldl1 f [] = ?
  foldl1 f [a] = a
  foldl1 f (h:t) = foldl f h t

  --Fold l
  --foldl f s l
  --dont care about f
  --Recursive foldl function
  foldl:: (a -> b -> a) -> a -> [b] -> a
  foldl _ s [] = s
  foldl f s (h:t) = foldl f(f s h) t