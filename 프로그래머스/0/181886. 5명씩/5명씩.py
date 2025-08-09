def solution(names):
    print(names)
    answer = []
    num = len(names)
    for i in range(1,num+1):
        if i % 5 ==1:
            answer.append(names[i-1])
    return answer