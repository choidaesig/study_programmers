def solution(s):
    answer = True
    cnt1=0
    cnt2=0
    res=list(s)
    for i in res:
        if i=="p" or i=="P":
            cnt1+=1
        elif i=="y" or i=="Y":
            cnt2+=1
    if cnt1==cnt2:
        return True
    else:
        return False
            
    
    return True