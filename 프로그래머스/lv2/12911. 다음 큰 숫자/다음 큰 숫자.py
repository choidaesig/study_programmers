def solution(n):
    nextNumber = n+1
    oneCount=list(bin(n)).count('1')
    while oneCount!=(bin(nextNumber)).count('1'):
        nextNumber+=1
    return nextNumber