def compound_interest(principal, rate, contribution, years):
  for _ in range(years):
    principal+=principal*(rate/100)+contribution
  
  
  
  return round(principal,2)