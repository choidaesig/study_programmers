def solution(n):
    answer = 0
    number=0
    count=0
    nocount=1
    while number<n:
        answer+=number

        if answer==n:
            count+=1
            number=count
        elif answer>n:
            nocount+=1
            number=nocount
            answer=0
        else:
            number+=1 
    return count+1