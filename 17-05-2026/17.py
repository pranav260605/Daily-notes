def wrap(string, max_width):
    temp = 0
    ans = ""

    for ch in string:
        ans += ch
        temp += 1

        if temp == max_width:
            ans += "\n"
            temp = 0

    return ans