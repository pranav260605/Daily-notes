def triangular_sum(nums):
  N=len(nums)
  
  for _ in range(N-1):
    
    for i in range(0,N-1):
      nums[i]=(nums[i]+nums[i+1])%10
  
  
  return nums[0]
