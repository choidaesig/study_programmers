def solution(n):
    answer = 0
    res=int(n**(1/2))
    if (res**2)==n:
        answer=(res+1)**2
    else:
        answer=-1
    return answer