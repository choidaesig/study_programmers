def solution(X, Y):
    
    answer = []
    res=[0,0,0,0,0,0,0,0,0,0]
    res2=[0,0,0,0,0,0,0,0,0,0]

    Y=list(str(Y))
    X=list(str(X))

    for i in Y:
        res[int(i)]+=1
    for j in X:
        res2[int(j)]+=1
        
    for i in range(10):
        while res[i] >0 and res2[i]>0:
            answer.append(i)
            res[i]-=1
            res2[i]-=1
            
    answer.sort(reverse=True)
    for i in range(len(answer)):
        answer[i] = str(answer[i])
        
    if len(answer)==0:
        answer='-1'
    
    zero=answer.count("0")
    if len(answer)==zero:
        answer="0"
    
    answer="".join(answer)
    return answer
    