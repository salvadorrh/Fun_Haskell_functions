module hamming where
  power m 0 = 1
  power m n = m * power m (n-1)

  isPrime 1 = False
  isPrime 2 = True
  isPrime x = noFactor 2 x

  noFactor s t = if s == t then True else if mod t s == 0 then False else noFactor (s+1) t

  --hamming 1 is the base case
  hamming 1 = True
  --This was my first solution, don't try this at home
  --hamming x = if hasFactorTwo x then hamming (div x 2) else if hasFactorThree x then hamming (div x 3) else if hasFactorFive x then hamming (div x 5) else False
  
  --The good solution
  --Recursion, until the number is not divisible by 2,3 or 5
  --If the last number is not 1, then it means the number has other factors aside from 2, 3 or 5
  hamming x
	| hasFactorTwo x = hamming (div x 2)
	| hasFactorThree x = hamming (div x 3)
	| hasFactorFive x = hamming (div x 5)
	| otherwise = False

  --This is to see if the number is divisible by 2, 3, 5
  hasFactorTwo x = if mod x 2 == 0 then True else False
  hasFactorThree x = if mod x 3 == 0 then True else False
  hasFactorFive x = if mod x 5 == 0 then True else False  

  --hello 1 = 1