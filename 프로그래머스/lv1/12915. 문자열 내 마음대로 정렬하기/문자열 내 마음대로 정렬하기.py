def solution(strings, n):
    answer = sorted(strings,key=lambda x : ((x[n:n+1],x)))
    return answer