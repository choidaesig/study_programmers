def solution(nums):
    answer = 0

    for i in range(0,len(nums)-2): # 0              0          1
        for j in range(i+1,len(nums)-1): #  1     2            2   
            for k in range(j+1,len(nums)): #  2 3    3          3
                hab=nums[i]+nums[j]+nums[k] # 6 7       8  9
                cnt=0
                for u in range(2,hab+1):        
                    if hab%u==0:
                        cnt+=1
                if cnt==1:
                    answer+=1
    return answer