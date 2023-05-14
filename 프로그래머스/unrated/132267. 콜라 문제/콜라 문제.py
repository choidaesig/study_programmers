def solution(a, b, n):
    answer = 0
    while n>=a:
        remain = n%a  #나머지 콜라 2 
        answer += n//a*b  #받는 콜라 6
        n = n//a*b 
        n += remain 
    return answer