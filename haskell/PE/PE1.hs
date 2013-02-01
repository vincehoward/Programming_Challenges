sum [ x | x <- [1..1000], x `mod` 3 == 0 || x `mod` 5 == 0, x < 1000]


sum (filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) (map succ [1..998]))