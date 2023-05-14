def solution(array, commands):
    answer = []
    res=[]
    for i in range(len(commands)):
        k=commands[i][2]-1
        answer=sorted(array[commands[i][0]-1:commands[i][1]])
        res.append(answer[k])
    return res