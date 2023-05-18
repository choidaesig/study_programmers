def solution(number, limit, power):
    answer = []
    for i in range(1,number+1):
        cnt=0
        for j in range(1,int(i**0.5)+1):# 81 / 1 3 9 27 81  / 9 
            if i%j==0: 
                cnt+=2
                if j == i//j: # 제곱 수는 한번만 넣기
                    cnt -= 1
        answer.append(cnt)
    
    for i in range(len(answer)):
        if answer[i] > limit:
            answer[i]=power
            
    return sum(answer)

