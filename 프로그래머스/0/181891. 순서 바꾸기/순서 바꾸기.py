def solution(num_list, n):
    answer = []
    fin=len(num_list)
    for i in range(n,fin):
        answer.append(num_list[i])
    for i in range(0,n):
        answer.append(num_list[i]) 
    return answer