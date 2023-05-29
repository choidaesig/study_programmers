import math

def lcm(a, b):
    return int( a * b / math.gcd(a, b))


def solution(arr):
    answer = 0

    res = []

    for el in arr:
        if res==[]:
            res.append(el)
        else:
            res.append(lcm(res.pop(), el))

    return res[-1]