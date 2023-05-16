
def solution(N, stages):
    import decimal
    answer = []
    reslist=[]
    n=len(stages)
    for i in range(1,N+1):
        if stages.count(i) ==0:
            reslist.append(0)
            continue
        cnt=stages.count(i)
        res=cnt/n
        reslist.append(res)
        n-=cnt
        
        
    for i in range(N):
        big=max(reslist)
        k=reslist.index(big)
        answer.append(k+1)
        reslist[k]=-1        
        
    return answer