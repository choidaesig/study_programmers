def solution(k, m, score):
    answer = 0
    box=[]
    score=sorted(score,reverse=True)
    for i in range(0,len(score),m): 
        if i+m <=len(score):
            box.append(score[i+m-1])     
    answer+=sum(box)*m
    return answer