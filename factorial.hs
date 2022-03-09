module Sample where
  fact 0 = 1
  fact x = fact(x-1) * x
