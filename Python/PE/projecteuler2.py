#projecteuler2.py

total = 0
a, b = 1, 0

while a <= 4000000:
    a, b = b, a + b

    if a % 2 == 0:
        total += a

    print total