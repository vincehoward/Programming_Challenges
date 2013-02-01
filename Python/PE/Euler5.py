# Euler 5 

import os

z = 0

for x in range(100000, 99999999):
   z = 0
   for y in range(1, 20):
      z = z + (x % y)
   if z == 0:
      print x
