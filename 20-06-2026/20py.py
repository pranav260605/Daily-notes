def isPalindrome(phrase):
    s = ""

    for ch in phrase:
        # Instead of just checking for spaces, check if it is NOT a letter or number
        if not ch.isalnum():
            continue
        else:
            s += ch.lower()

    # Your loop checking up to the halfway point
    for i in range(0, len(s)//2):
        if s[i] != s[len(s)-i-1]:
            return False

    return True