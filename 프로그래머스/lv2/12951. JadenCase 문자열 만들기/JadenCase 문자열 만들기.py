def solution(s):
    answer = ''
    word=list(map(str,s.split(" ")))
    for i in word:
        if i=="":
            answer+=" "
            continue
        answer+=i[0].upper()
        answer+=i[1:].lower()
        answer+=" "
    
    return answer[0:-1]
