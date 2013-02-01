#Euler 3

import os

x = 2
y = 600851475143
z = 300425737572
c = 0

def isPrime(a):
   if a == 2:
      return True
   if not a & 1:
      return False
   for b in range(3, int(pow(a, 0.5))+1, 2):
      if a % b == 0:
         return False
   return True

for x in range(50000000, 90000000):
   if y % x == 0:
      c = y / x
      if isPrime(c):
         print c
