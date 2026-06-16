def sum_of_digits(n):
    sum = 0
    while n > 0:
        b = n % 10
        sum += b
        n = n // 10
    return sum