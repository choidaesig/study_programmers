def solution(participant, completion):
    answer = ''
    if len(set(participant))!=len(set(completion)):
        answer=set(participant)-set(completion)
        answer=list(answer)
        answer=answer[0]
    else:
        participant=sorted(participant)
        completion=sorted(completion)
        
        for index in range(len(completion)):
            if completion[index] != participant[index]:
                return participant[index]

        
    return answer