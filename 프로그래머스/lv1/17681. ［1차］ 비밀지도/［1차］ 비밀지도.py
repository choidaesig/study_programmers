def solution(n, arr1, arr2):
    answer = [] 
    for i in range(len(arr1)):
        res=bin(arr1[i] | arr2[i])
        res2=res[2:]
        while len(res2)<n:
            res2='0'+res2
        res3=res2.replace('0',' ')
        res4=res3.replace('1','#')
        answer.append(res4) 
    return answer