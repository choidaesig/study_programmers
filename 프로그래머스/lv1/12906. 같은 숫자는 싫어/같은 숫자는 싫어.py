def solution(arr):
    answer = []
    # [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    lentgh=len(arr)
    cnt=0
    while cnt!=lentgh-1:
        if arr[cnt]!=arr[cnt+1]:
            answer.append(arr[cnt])
        cnt+=1
    answer.append(arr[cnt])
    return answer