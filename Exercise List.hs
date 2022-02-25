module Exercise_List where
  import Prelude hiding(max,foldl)
  fib 1 = 2
  x1 = mod 17 3
  x2 = (-) 5 3
  x3 = 1 + 1
  x4 x = [x + 1 | x <- [1 .. 5], mod x 2 == 0]
  --x->x = (\x->x) (\x->x) (\x->x)
  x5:: (a -> a) -> a -> a
  x5 = (\x->x) (\x->x) (\x->x)
  x6:: a -> a
  x6 = (\x->x)(\x->x)(\x->x)


  -- Max of number
  max:: [Int] -> Int
  max [h] = h
  max (h1:h2:t) = if h1 > h2 then max (h1:t) else max (h2:t)


  --drop l p = reverse (mark(reverse l)p)
    --where 
      --mark [] = []
      --mark (h:t)


  isFull::[Int] -> Bool
  isFull [] = True
  isFull (h:t) 
    | h ==0 = False
    | otherwise = isFull t


  isFull2 l = length[x|x<-l, x==0] == 0


  map::(a->b) -> [a] -> [b]
  map f [] = []
  filter::(a -> Bool) -> [a] -> [a]
  filter f [] =[]

  --Fold l
  --foldl f s l
  --dont care about f

  foldl:: (a->b->a) -> a -> [b] -> a

  foldl f s [] = s

  foldl f s (h:t) = foldl f(f s h) t
