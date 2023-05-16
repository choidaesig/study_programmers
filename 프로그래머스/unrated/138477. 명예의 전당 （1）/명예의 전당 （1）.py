def solution(k, score):
    answer = []
    res=[]
    for i in score:
        if len(answer)<k:
            res.append(i)
            answer.append(min(res))
        else:
            if i>=min(res):
                res.remove(min(res))
                res.append(i)
                answer.append(min(res))
            else:
                answer.append(min(res))
    return answer