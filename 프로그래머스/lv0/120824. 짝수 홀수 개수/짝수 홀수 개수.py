def solution(num_list):
    answer = []
    first=0
    second=0
    for i in num_list:
        if i %2==0:
            second+=1
        else:
            first +=1
    answer.append(second)
    answer.append(first)

    return answer