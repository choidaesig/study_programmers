def solution(s):
    answer=False
    res=list(s)
    res2=['0','1','2','3','4','5','6','7','8','9']
    cnt=0
    for i in res:
        if i in res2:
            cnt+=1
    if len(res)==cnt:
        if cnt==4 or cnt==6:
            answer=True
    return answer