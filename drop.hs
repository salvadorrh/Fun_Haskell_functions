module Drop where
  drop:: [Int] -> Int -> [Int]
  drop [] num = []
  drop (h:t) num = reverse (dropHelper (reverse(h:t)) num)

  dropHelper:: [Int] -> Int -> [Int]
  dropHelper [] num = []
  
  dropHelper (h:t) num
         | h == 0 = num:t
         | otherwise = (h):dropHelper (t) num