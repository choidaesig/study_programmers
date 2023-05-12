def solution(t, p):
    answer = 0
    for j in range(0,len(t)-len(p)+1):
        if t[j:j+len(p)] <= p:
            answer+=1
    
    return answer