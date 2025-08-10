def solution(my_string):
    answer = ''
    exp=['a','e','i','o','u']
    for i in my_string:
        if i not in exp:
            answer +=i
    return answer
