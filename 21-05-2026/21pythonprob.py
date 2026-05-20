def total_letters(N):
    def get_word(num):
        base = {
            1: 'one', 2: 'two', 3: 'three', 4: 'four', 
            5: 'five', 6: 'six', 7: 'seven', 8: 'eight', 
            9: 'nine', 10: 'ten', 11: 'eleven', 12: 'twelve', 
            13: 'thirteen', 14: 'fourteen', 15: 'fifteen', 
            16: 'sixteen', 17: 'seventeen', 18: 'eighteen', 
            19: 'nineteen', 20: 'twenty', 30: 'thirty', 
            40: 'forty', 50: 'fifty', 60: 'sixty', 70: 'seventy', 
            80: 'eighty', 90: 'ninety'
        }
        
        word=""
        if num>=100:
          word+=base[num//100]+"hundred"
          num=num%100
        if num>0 and word!="":
          word+="and"
        if num>20:
          word+=base[(num//10)*10]
          num=num%10
        if num>0:
          word=base[num]
        return word

    ans = 0
    for num in range(1, N + 1):
        ans += len(get_word(num))
    return ans