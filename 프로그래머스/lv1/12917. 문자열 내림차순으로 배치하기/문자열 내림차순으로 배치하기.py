def solution(s):
    s1=list(s)
    s2=sorted(s1,reverse=True)
    answer="".join(s2)
    return answer