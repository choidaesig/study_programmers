def solution(num_list):
    answer = 0
    hol=0
    jjag=0
    num = len(num_list)
    for i in range(0,num,2):
        hol +=num_list[i]
    for i in range(1,num,2):
        jjag +=num_list[i]
    if hol>=jjag:
        answer= hol
    else :
        answer = jjag
    return answer