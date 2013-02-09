-- ProjectEuler 2
-- The commented code is code to be run in ghci

fibs :: [Integer]
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)


-- Solution 1
-- Requires fibs from above

-- sum (filter (\x -> x <= 4000000 && x `mod` 2 == 0) ((take 1000 fibs)))


-- solution 2
-- Requires fibs from above

-- sum $ takeWhile (<= 4000000) $ filter even fibs


-- solution 2 alt.

-- sum . takeWhile (<= 4000000) . filter even $ fibs