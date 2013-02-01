-- Challenges from http://www.haskell.org/haskellwiki/99_questions

-- Problem 1
myLast :: [a] -> a
myLast [] = error "Empty list"
myLast [x] = x
myLast (_:xs) = myLast xs

myLast' :: [a] -> a
myLast' [] = error "Empty list"
myLast' xs = head (drop((length xs) - 1))


-- Problem 2
myButLast :: [a] -> a
myButLast [] = error "Empty list"
myButLast [x] = error "Not enough elements"
myButLast (x:y:[]) = x
myButLast (_:xs) =  myButLast xs

myButLast' :: [a] -> a
myButLast' [] = error "Empty list"
myButLast' [x] = error "Not enough elements"
myButLast' xs = head (drop((length - xs) - 2))


-- Problem 3
elementAt :: (Integral b) => [a] -> b -> a
elementAt [] _ = error "Empty list or out of range"
elementAt xs 1 = head xs
elementAt xs x = elementAt (tail xs) (x - 1) 


--Problem 4
myLength :: (Num b) => [a] -> b
myLength [] = 0
myLength (_:xs) = 1 + myLength xs