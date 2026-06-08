def fizz_buzz_sum(target):
    total = 0

    for n in range(3, target, 3):
        total += n

    for n in range(5, target, 5):
        if n % 3 != 0:
            total += n

    return total