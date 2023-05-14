def solution(s):
    sol=['zero','one','two','three','four','five','six','seven','eight','nine']
    answer =""
    res=""
    for i in s:
        if i.isnumeric():
            answer +=i
        else:
            res+=i
            if res in sol:
                answer +=str(sol.index(res))
                res=""
    return int(answer)