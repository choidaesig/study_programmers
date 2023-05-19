def solution(s):
    answer = 0
    s=list(s)
    cnt1=1
    cnt2=0
    i=0
    j=1
    if len(s)==1:
        answer=1
    while len(s)>1: # sss aaaaaabcdf
        if cnt1+cnt2 >=len(s):
            answer+=1
            break            
        if cnt1==cnt2:
            answer+=1
            del s[0:cnt1+cnt2]
            j=0
            cnt1=1 
            cnt2=0
        else:
            if s[i]==s[j]:
                cnt1+=1
            else:
                cnt2+=1
                
        if len(s)>1:
            j+=1
        else:
            answer+=1
            break
    
    return answer
