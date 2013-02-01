# Euler 4

import os

a = 0

for x in range(100, 999):
   for y in range(100, 999):
      z = x * y 
      if str(z) == str(z)[::-1]:
         if a < z:
            a = z
            print a