def solution(participant, completion):
    answer = ''
    participant=sorted(participant)
    completion=sorted(completion)
        
    for index in range(len(completion)):
        if completion[index] != participant[index]:
            
            return participant[index]        
    return participant[-1]