fibs :: [Integer]
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)

-- sum (filter (\x -> x <= 4000000 && x `mod` 2 == 0) ((take 1000 fibs)))