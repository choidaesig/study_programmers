def solution(quiz):
    answer = []
    for i in range(len(quiz)):
        res = list(map(str,quiz[i].split()))
        if res[1]=="-":
            if int(res[0])-int(res[2])==int(res[4]):
                answer.append("O")
            else:
                answer.append("X")
        else:
            if int(res[0])+int(res[2])==int(res[4]):
                answer.append("O")
            else:
                answer.append("X")
        
    return answer