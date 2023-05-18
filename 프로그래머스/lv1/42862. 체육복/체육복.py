def solution(n, lost, reserve):
    answer = []
    for i in range(n):
        answer.append(0) 
    for k in reserve: 
        answer[k-1]+=1    
    for j in lost:
        answer[j-1]-=1
        
    for i in range(n): 
        if answer[i]==-1 and i==0:
            if answer[i+1]==1:
                answer[i]+=1
                answer[i+1]-=1
                
        elif answer[i]==-1 and i==n-1:
            if answer[i-1]==1:
                answer[i]+=1
                answer[i-1]-=1
                
        elif answer[i]==-1:
            if answer[i-1]==1:
                answer[i]+=1
                answer[i-1]-=1
            elif answer[i+1]==1:
                answer[i]+=1
                answer[i+1]-=1
                
        
                            

    return answer.count(1)+answer.count(0)