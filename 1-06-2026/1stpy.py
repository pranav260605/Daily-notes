def generate(numRows):
  triangle=[]
  for i in range(numRows):
    row = [1]*(i+1)
    
    for j in range(1,i):
      row[j]=triangle[i-1][j]+triangle[i-1][j-1]
    
    
    
    triangle.append(row)
  return triangle

  #need to learn breaking of the problem