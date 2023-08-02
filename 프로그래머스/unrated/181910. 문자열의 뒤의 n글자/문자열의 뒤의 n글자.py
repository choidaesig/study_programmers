def solution(my_string, n):
    length=len(my_string) - n
    print(length)
    answer = my_string[length:]
    print(answer)
    return answer