def solution(a, b):
    answer = 0
    day=['THU','FRI','SAT','SUN','MON','TUE','WED']
    month=[31,29,31,30,31,30,31,31,30,31,30,31]
    
    for i in range(a-1):
        answer+=month[i]
        
    answer+=b
    answer=day[answer%7]
    return answer