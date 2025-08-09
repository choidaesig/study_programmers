def solution(a, b):
    answer = 0
    one=str(a)
    two=str(b)
    one_test= one+two
    two_test=two+one
    one = int(one_test)
    two = int(two_test)
    if one>two :
        answer =one
    else :
        answer = two
    return answer