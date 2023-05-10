def solution(n, m):
    answer = []
    answer.append(GCD(n,m))
    answer.append(LCM(n,m))
    
    return answer

def GCD(x,y):
    while(y):
        x,y=y,x%y
    return x

def LCM(x,y):
    res=(x*y)//GCD(x,y)
    return res