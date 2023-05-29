def solution(k, tangerine):
    answer = 0
    dic={}
    for i in tangerine:
        if i in dic:
            dic[i]+=1
        else:
            dic[i]=1
    cnt=[]
    for j in dic.keys():
        cnt.append(dic[j])
    cnt.sort()
    while k>0:
        k-=cnt[-1]
        cnt.pop()
        answer+=1
    return answer