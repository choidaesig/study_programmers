def solution(answers):
    answer = []
    a1=[1, 2, 3, 4, 5]
    a2=[2, 1, 2, 3, 2, 4, 2, 5]
    a3=[3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    c1,c2,c3=0,0,0
    for i in range(len(answers)):
        num=i%5
        if a1[num] == answers[i]:
            c1+=1
    
    for i in range(len(answers)):
        num=i%8
        if a2[num] == answers[i]:
            c2+=1
    
    for i in range(len(answers)):
        num=i%10
        if a3[num] == answers[i]:
            c3+=1
    
    k=max(c1,c2,c3)
    if k==c1:
        answer.append(1)
    if k==c2:
        answer.append(2)
    if k==c3:
        answer.append(3)
    
    return answer