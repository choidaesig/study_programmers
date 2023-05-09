def solution(price, money, count):
    mymoney=0
    for i in range(1,count+1):
        mymoney+=price*(i)
    answer = mymoney-money
    
    if answer<0:
        answer=0
    
    return answer