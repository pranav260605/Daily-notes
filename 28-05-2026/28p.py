def weakest_strong_link(strength):
    m = len(strength)
    n = len(strength[0])
    
    
    min_rows = [0] * m 
    
    
    max_cols = [0] * n 
    
    for i in range(m):
        min_rows[i] = min(strength[i])
        
    for j in range(n):
      cur_max=strength[0][j]
      for i in range(m):
        cur_max = max(cur_max, strength[i][j])
      max_cols[j]=cur_max
      
      
    for i in range(m):
      for j in range(n):
        if min_rows[i]==max_cols[j]:
          return min_rows[i]
          break
          
      
      
    return -1