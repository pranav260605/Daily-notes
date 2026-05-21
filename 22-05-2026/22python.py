def intersection(a, b):
    c = a + b
    ans = {}
    result = []

    for i in c:
        if i in ans:
            ans[i] += 1
        else:
            ans[i] = 1

    for an in ans:
        if ans[an] != 1:
            result.append(an)

    return result
