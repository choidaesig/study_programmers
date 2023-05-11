def solution(s, n):
    answer = ''

    for i in s:
        for j in range(n):
            if i not in (' ','z','Z'):
                i=chr(ord(i)+1)
            elif i in ('z','Z'):
                i=chr(ord(i)-25)
        answer+=i        
    return answer