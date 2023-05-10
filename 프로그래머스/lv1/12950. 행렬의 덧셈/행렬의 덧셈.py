def solution(arr1, arr2):
    answer = [[]]
    
    for i in range(len(arr2)):
        res=[]
        for j in range(len(arr2[i])):
            res.append(arr1[i][j]+arr2[i][j])
        answer.append(res)
    del answer[0]
    return answer