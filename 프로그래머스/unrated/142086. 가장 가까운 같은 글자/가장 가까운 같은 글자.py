def solution(s):
    answer = []
    res=""
    for i in range(len(s)):
        if s[i] not in res:
            res+=s[i]  
            answer.append(-1)
        else:
            k=i-res.index(s[i]) 
            answer.append(k)
            res=res.replace(s[i],'*')
            res+=s[i]
    return answer